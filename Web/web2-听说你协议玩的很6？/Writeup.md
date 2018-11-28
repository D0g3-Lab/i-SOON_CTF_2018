### Web2 （听说你协议玩的很6）
#### 考点
ssrf 内网主机探测 攻击内网web

#### 解题思路

页面中可输入点就只有一个～
![](https://ws1.sinaimg.cn/large/006tNbRwly1fxb7lp7j1lj30wm0htjs1.jpg)

随便测试可以发现get请求是url=xxx，应该可以联想到是ssrf

而且题目内置两个tips 
1.内网ip段
2.协议
![](https://ws4.sinaimg.cn/large/006tNbRwly1fxb7p1i3wjj30ly03nmx3.jpg)


首先需要发现内网哪台主机是存活的，然后根据题目描述，找到内网主机的d0g3.php
![](https://ws4.sinaimg.cn/large/006tNbRwly1fxb7qvjzubj30kl057mx7.jpg)

发现d0g3.php在10.10.1.6主机中，查看源码可以发现有个注释中暗含玄机`$_GET[d0g3]`

可以直接命令执行cat flag.txt
![](https://ws1.sinaimg.cn/large/006tNbRwly1fxbchcmuvzj30jf0dj74n.jpg)

#### 小插曲

* 可能由于是内网的web的原因，所以导致无法连菜刀。
* 有些表哥可能打脑洞题打多了～～一直觉得我的`$_GET[d0g3]`是个假提示 （逃
* 本来想出多一点协议考点的，但无奈bug太多，于是只能点到为止～
* 比赛结束后发现这道题的解题率大概有50%～～希望各位表哥玩的开心～