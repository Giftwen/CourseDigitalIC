# How to run

1. 首先git此仓库到本地

```
git clone git@github.com:Giftwen/CourseDigitalIC.git
```

2. 进入工作目录

```
cd homework/ch?/prj
```

3. 执行Makefile进行仿真

```
make compile :编译vcs
make verdi :看波形
make syn: 综合 
```

**项目工程由脚本文件自动生成**

```
脚本文件为python书写，功能为
1自动创建多个项目子目录
2可自动分别生成综合和仿真的filelist
3自动基于项目名称生成仿真激励文件
4自动基于项目名称创建Makefile其中Makefile支持vcs/verilator仿真，dc综合，verdi波形
5自动生成高可配置性的综合流程脚本和Sdc的面积时序约束文件
python3 prjgen.py demo
若需要此脚本请切换分支到ch3查看。
```

PS:
关于仿真：
要在Makefile内修改对应路径，同时针对不同的子电路要在vcs参数下添加define参数。
关于综合：
要在Sdc内修改对应工艺库路径，同时针对不同的子电路要在参数下指定顶层和信号名以及编译参数。
**详情请参考项目地址：https://github.com/Giftwen/CourseDigitalIC**
