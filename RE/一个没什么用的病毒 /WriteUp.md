#### 0x00
首先你需要准备 IDA
#### 0x01
**（1）**   
> 没壳，就丢IDA好了。。。    
> 先看看有没有什么String  
> ![](https://i.imgur.com/1o9e7pp.png)    
> emmmm？？ shutdown、SeDebugPrivilege、PhysicalDrive0？？？有丶东西    
> 感觉他要对硬盘干什么坏事。。    

**（2）**   
> 再看看导入表，用了什么奇怪的函数   
> ![](https://i.imgur.com/pjbsQTD.png)    
> 嗯？Regxxx注册键值、Adjustxxx提权、xxxFile文件   
> 咳咳。。。这东西。。

**（3）**
再看看start函数       
> ![](https://i.imgur.com/A8PxqRM.png)    
> ​     
> 按一下F5啦，就是这样。。。
> ![](https://i.imgur.com/lMlOSSD.png)    
> 知道了。。这是MainCRTStartup。。。    

**（4）**
> 好了，我们就知道main函数是sub\_401130()，跟进去看看他要干嘛QAQ。。。   
> ![](https://i.imgur.com/MOOPYkr.png)    
> woc。。它定义了512个char。。还赋了值。。。   
> (最后赋值是 0x55, 0xAA, MBR结尾标志)    
> emmmm先不管是什么，先看看他执行了什么东西    
> ![](https://i.imgur.com/lYE4Rfn.png)    

**（5）**
> 先是sub\_402170()    
> ![](https://i.imgur.com/sUJHiD1.png)    
> 返回 0？？？没什么用的函数？？好吧。。。   
> 
> 然后是sub\_401e50()    
> ![](https://i.imgur.com/vA8j1Ga.png)
> ​    
> 对函数 sub\_402170 + 9 的位置修改值为 0x90(汇编对应 nop)长度为 202   
> 哎？桥豆麻袋！    
> 也就是说这是一个简单的 SMC，对 0x402179 到 0x402242 的位置 nop    
> 我们打开 sub_402170 对应的 Text View    
> ![](https://i.imgur.com/PXe3P8v.png)   
> retn 后面的确有脏数据    
> 好了~那我们只要分析 0x402243 后面的就好啦~   
> （其实可以把 0x402179 到 0x402242 改为nop，直接F5。。。。简单粗暴。。)     
> ![](https://i.imgur.com/DwTjgBt.png)   
> 红框，分配了512字节空间    
> 篮筐，打开物理磁盘0，看来这后面就是搞事情的东西了

**（6）** 
> 那先看中间的那个函数 sub\_4020E0    
> ![](https://i.imgur.com/aIsgj6R.png)     
> 取个时间设为种子    
> v3 = （rand() * 100 + rand() + 123）% 90000;    
> 所以 v3 一定是 1W~9W 之间的数    
> 把 v3 转化为字符数字附到 数组 30 和 43偏移处   
> 把 （v3 + 321）% 90000 附到 49 偏移处    
> 所以。。。。这个数组是个啥。。。应该是Flag吧？？？   
> 好吧QAQ 暂时不管了   
> 
> 看后面的 sub\_401040 和 sub\_4010A0    
> sub\_401040    
> ![](https://i.imgur.com/Jf5JlV2.png)    
> sub\_4010A0
> ![](https://i.imgur.com/N10PNIC.png)     
> 读写硬盘函数    
> 
> 主要流程就是把从 0扇区 读到的数据存入 VirtualAlloc 分配的区域，   
> 然后写回 1扇区 ，然后把 [esp + 8] 指向的数据写回 0扇区（MBR 512字节）   
> 哎？？wait！这个 [esp + 8] 是不是也传给过 sub\_4020E0   
> emmmm。。。。这个函数返回 TRUE 就ok了     

**（7）**
> 这时候我们回到主函数。。。。    
> wait？？这个函数接收了 &v1，v1这不是也是 512 字节的数组么。。。   
> 先不看，我们分析一下其他流程    
> sub\_401E80 提权    
> ![](https://i.imgur.com/HRWBDHd.png)    
> 
> sub\_401F50 拷贝文件 & 设置注册表    
> ![](https://i.imgur.com/YaxM687.png)    
> 得到当前程序句柄    
> 得到当前程序目录    
> 得到系统目录    
> strcat(SystemPath, "svchose.exe")   
> 拷贝自身到系统目录（C:\Windows\System32\svchose.exe）      
> 注册开机启动（SOFTWARE\Microsoft\Windows\CurrentVersion\Run）   

**(8)**
> 程序大概流程就是   
> sub\_402170 先迷糊人    
> sub\_401E50 修改 sub\_402170   
> sub\_401E80 提权、sub\_401F50 注册开机启动   
> sub\_402170 修改扇区    
> 执行成功关机，失败显示 oops。。。   
> 现在就是分析那个写入的 MBR 了   

**（9）**
> 二进制数据考下来，放入 IDA 分析   
> 见附件   
> 然后结合运行结果，计算出flag   
> emmmm，flag是随机的，每次都不一样。。。
> 
> 如果会调试 MBR 的话。。。。  
> flag就在 0x7C26 放着的     
> ![](https://i.imgur.com/hSmG0SG.png)