
  #include "Vtop.h"
  #include "verilated.h"
  #include "verilated_vcd_c.h"
  #include <stdio.h>
  #include <stdlib.h>
  #include <assert.h>


  int main(int argc, char** argv, char** env) {
      #ifdef SIM_ON
      VerilatedContext* contextp = new VerilatedContext;
      contextp->commandArgs(argc, argv);
      Vtop* top = new Vtop{contextp};
      int cycle_num=66;
      uint64_t limit = cycle_num;
      #endif
      
      #ifdef TRACE_ON
        printf("=======TRACE_ON=======\n");
        VerilatedVcdC* tfp = new VerilatedVcdC;
        Verilated::traceEverOn(true);
        top->trace(tfp, 99);
        tfp->open("build/obj_dir/Sort.vcd");
        unsigned int cycle = 0;
      #endif
      //printf("cycle_num = %d \n",cycle_num);
    
      #ifdef SIM_ON
      while(contextp->time() < limit && !contextp->gotFinish()){


        int a = rand() & 1;
        int b = rand() & 1;
        top->a = a;
        top->b = b;
        contextp->timeInc(1);
        top->eval();
        //assert((top->f )== (a ^ b));
        //printf("a = %d, b = %d, f = %d\n", a, b, top->f);


        #ifdef TRACE_ON
            tfp->dump(cycle++);
        #endif
        
      }
      #endif
      #ifdef TRACE_ON
        tfp->close();
      #endif
      #ifdef SIM_ON
      delete top;
      delete contextp;
      #endif
      return 0;
  }

    