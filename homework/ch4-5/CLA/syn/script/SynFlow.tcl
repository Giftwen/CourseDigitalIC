
#--------------------------Specify Libraries--------------------------
set DESIGN_PATH /opt/PDKs/smic_180/SM00LB501-FE-00000-r0p0-00rel0/aci/sc-m/synopsys 
set search_path "$search_path $DESIGN_PATH"
set target_library "ss_1v62_125c.db"
set link_library "* $target_library"
echo "\n\nSettings:"
echo "search_path: $search_path"
echo "link_library: $link_library"
echo "target_library: $target_library"
echo "\n\nI'm Ready!"
#set search_path "$TAR_PATH $MEM_LINK_PATH"

#--------------------------Prepare Filelist---------------------------
set FILE_LIST ""
set f [open "../syn/filelist_syn.f" r]
while {![eof $f]} {
    gets $f line
    append FILE_LIST "$line "
}
echo $FILE_LIST
close $f

#--------------------------Read Designs------------------------------
set TOP_DESIGN top
analyze -format verilog $FILE_LIST -vcs "+define+CLa"
elaborate $TOP_DESIGN

#------------------------Set Current Design&&Link Designs--------------------------
#current_design $TOP_DESIGN(auto)
#link(auto)

#-------------------------------SDC----------------------------------
source ../syn/script/Sdc.tcl

#--------------------Map and Optimize the Design---------------------
compile_ultra -no_autoungroup -incremental -no_boundary_optimization
#----------------------Save Design Database--------------------------
change_names -rules verilog -hierarchy
set_fix_multiple_port_nets -all -buffer_constants
#---------------Check the Synthesized Design for Consistency---------
check_design -summary > ../syn/report/check_design.rpt
check_timing > ../syn/report/check_timing.rpt
#---------------------Report Timing and Area-------------------------
report_qor                  > ../syn/report/$TOP_DESIGN.qor_rpt
report_timing -max_paths 1000 > ../syn/report/$TOP_DESIGN.timing_rpt
report_timing -path full    > ../syn/report/$TOP_DESIGN.full_timing_rpt
report_timing -delay max    > ../syn/report/$TOP_DESIGN.setup_timing_rpt
report_timing -delay min    > ../syn/report/$TOP_DESIGN.hold_timing_rpt
report_reference            > ../syn/report/$TOP_DESIGN.ref_rpt
report_area                 > ../syn/report/$TOP_DESIGN.area_rpt
report_constraints          > ../syn/report/$TOP_DESIGN.const_rpt
report_constraint -all_violators > ../syn/report/$TOP_DESIGN.violators_rpt
report_power > ../syn/report/$TOP_DESIGN.power_rpt
check_timing > ../syn/log/last_check_timing.log
#---------------------Generate Files -------------------------
write -f verilog -hierarchy -output ../syn/mapped/$TOP_DESIGN.v
write_sdc ../syn/mapped/$TOP_DESIGN.sdc
write_sdf -context verilog ../syn/mapped/$TOP_DESIGN.sdf


    