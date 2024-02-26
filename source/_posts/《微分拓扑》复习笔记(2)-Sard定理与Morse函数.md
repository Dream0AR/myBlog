---
title: 《微分拓扑》复习笔记(2)-Sard定理与Morse函数
date: 2023-06-11 14:37:24
categories: 
- 笔记
- 几何
- 微分拓扑
mathjax: true
---

## Sard定理

**定理 1**. *光滑映射$f:M\rightarrow N$的临界值集合为$N$中的零测集.* 

**注 2**. *Sard定理对$C^k$映射$f:M^m\rightarrow N^n$成立, $k\ge \max\{1,m-n+1\}.$ 注意临界点集未必零测.* 

**推论 3**. *光滑映射$f:M\rightarrow N$的正则值在$N$中稠密. 且同时为可列个光滑映射正则值的点也稠密.* 

证明由如下步骤组成:

**引理 4**. *$f:I^m\rightarrow \mathbb{R}^n$为$C^1$映射. 若$m=n,$ $A\subset I^m$零测, 则$f(A)\subset \mathbb{R}^n$为零测集. 若$m<n,$ $f(I^m)\subset \mathbb{R}^n$是零测集.* 

测度由Lipschitz常数控制, 由此证明第一部分结论即可.

**推论 5** (Mini Sard). *设$f:M\rightarrow N$为$C^1$映射, $\dim M=\dim N,$ 则$M$中零测集$A\subset M$的像$f(A)$为$N$中零测集. 若$\dim M<\dim N,$ 则$f(M)$为$N$中的零测集. ($M$上都是临界点.)* 

**定理 6** (等维数Sard定理). *设$f:M\rightarrow N$为$n$维流形间的$C^1$映射, $C\subset M$为临界点集. 则$f(C)$为零测集.* 

由Taylor定理, 在临界值附近, 像集可以用超平面处小邻域控制.
做分割让邻域充分小即可.

**引理 7**. *设$I_1,\cdots,I_n$为闭区间$[a,b]$的覆盖, 则存在加细覆盖$I_1',\cdots,I_N',$ 使得$I_j'\subset I_i,$ $\sum_{j=1}^N |I_j'|\le 2(b-a).$* 

**定理 8** (零测集Fubini定理). *设$A\subset \mathbb{R}^n$为紧致集. 若$\,\forall\,c\in \mathbb{R},$ $A\cap (\{c\}\times \mathbb{R}^{n-1})$为$\{c\}\times \mathbb{R}^{n-1}$中零测集, 则$A$为$\mathbb{R}^n$中零测集.* 

由此可证明Sard定理. 只需利用归纳法,
讨论$f:U^m\rightarrow \mathbb{R}^n$即可. 按导数次数讨论.
对于次数最高的情形用Taylor公式估计即可.

## Morse函数

设$f:M\rightarrow \mathbb{R}$为光滑函数, 若$df_p=0,$ 则称$p$为临界点.
若$M$紧致, 至少有两个临界点: 最大值点与最小值点. 若临界点处二阶导非退化,
则称临界点为**非退化临界点**. 该定义与坐标卡选取无关.

**命题 9**. *非退化临界点附近没有其它临界点.* 

**引理 10** (Morse引理). *设$c$为函数$f:M\rightarrow \mathbb{R}$的非退化临界点, 则存在$c$的Morse坐标卡$(U,\phi),$ Morse指标$i,$ 使得* 



$$
f\circ \phi^{-1}(x_1,\cdots,x_n)=f(c)-\sum_{j=1}^i x_j^2+\sum_{j=i+1}^n x_j^2.
$$



证明利用Taylor展开进行, 对维数进行归纳.

**推论 11**. *函数的非退化临界点是孤立的. 特别的, 紧流形上Morse函数有有限个临界点.* 

若函数$f$所有临界点都是非退化的, 那么称$f$为Morse函数.

**命题 12**. *设$M^m\subset \mathbb{R}^n$为嵌入子流形. 对几乎所有的$a\in \mathbb{R}^n,$ 有Morse函数* 



$$
f_a:M\rightarrow \mathbb{R},\quad f(x)=\Vert x-a\Vert^2.
$$



证明只需考虑非退化临界点发生当且仅当


$$
x-a\perp T_xM,\quad \left|\frac{\partial^2 {}f}{\partial {}u_i\partial {}u_j}\right|\neq 0,
$$


说明不满足该条件的$a$为光滑映射$T^\perp M\ni w\mapsto x+w$的临界值即可.

**命题 13**. *设$M$为光滑流形, $f:M\rightarrow \mathbb{R}$为光滑函数, $k\in \mathbb{Z}_+.$ 则在任意紧子集上, $f$及其直到$k$阶导数被Morse函数一致逼近.* 

考虑用$f_a$对坐标分量进行逼近即可.

**定理 14**. *设$M$为紧致流形, 则$M$上Morse函数的集合为$C^\infty(M,\mathbb{R})$的稠密开集.* 

文章最后更新于 2023-06-11 14:37:26 
