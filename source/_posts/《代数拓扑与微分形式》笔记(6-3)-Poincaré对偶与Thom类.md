---
title: 《代数拓扑与微分形式》笔记(6-3)-Poincaré对偶与Thom类
date: 2021-10-10 21:10:51
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

本节解释如何将子流形Poincaré对偶与子流形上向量丛的Thom类联系起来.

商丛
----

称$F$是秩$n$向量丛$E$的秩$k$**子丛**, 若$\,\forall\,x\in M$,
$F_x$为$E_x$子空间.

由此可定义**商丛**$Q=E/F$,
它是一个向量丛使得$0\rightarrow F\rightarrow E\rightarrow Q\rightarrow 0$正合.
即$\,\forall\,x\in M$, $Q_x=E_x/F_x$为商空间.

首先, 先取$F$中自然标架, 再扩张为$E$的一组标架,
这样它们的局部平凡化相容. 设$E$的局部平凡化转移函数为$g_{\alpha\beta},$
$F$为$h_{\alpha\beta}.$ 则对于$F$上的点, 只有$h_{\alpha\beta}$起作用,
从而有$g_{\alpha\beta}=\begin{pmatrix}
            h_{\alpha\beta} & *\\
            0 & q_{\alpha\beta}
        \end{pmatrix}$. 那么$q_{\alpha\beta}$便是$Q$的转移函数.
易见若$E,F$可定向, $Q$也可定向, 称$Q$的定向使得$E$的定向是直和定向.

因为我们有内积, 所以纤维上有正交补空间$F_x^\perp\subset E_x$.
那么$F^\perp=\bigsqcup F_x^\perp$是$E$的子丛且$E=F\oplus F^\perp$,
其上还有继承于$E$的内积. 显然$Q\cong F^\perp$,
从而$Q/E$上也有诱导的内积. $F^\perp$上也有定向使得$E$的定向为直和定向.

子流形法丛与管状邻域引理
------------------------

$k$维子流形$S\subset M$, $S$上有切丛$TS$与$i^{-1}TM=TM|_S$,
$i$为包含映射.

显然$TS\subset TM|_S$. 定义$N_{S/M}=TM|_S/TS$, 简记为$N$. 若$M,S$可定向,
则切丛可定向, 从而$N$可定向.

$\,\forall\,x\in S$, 存在$x$点坐标卡$(U,\phi)$,
使得$\phi|_{S\cap U}$为$x$在$S$中坐标卡, 且只有前$k$个坐标有值.
由此诱导切丛上的标架. 限制在$U_\alpha$或$U_\alpha\cap S$上,
记$TM$标架为$\{\frac{\partial {} }{\partial {}x_A^\alpha}\}_{1\le A\le n}$,
$TS$标架为$\{\frac{\partial {} }{\partial {}x_i^\alpha}\}_{1\le i\le k}$,
$N$标架为$\{\frac{\partial {} }{\partial {}x_a^\alpha}\}_{k+1\le a\le n}$.

在$S\cap U_{\alpha\beta}$上,
$\frac{\partial {}x_a^\alpha}{\partial {}x_i^\beta}=0$,
因此$TS$转移函数为$h_{\alpha\beta}=(\frac{\partial {}x_j^\alpha}{\partial {}x_i^\beta})_{k\times k}$.

然而,
$\frac{\partial {}x_j^\alpha}{\partial {}x_a^\beta}$显然不一定为$0$,
但我们在做商丛时模掉了这部分,
因此$N$的转移函数为$q_{\alpha\beta}=(\frac{\partial {}x_b^\alpha}{\partial {}x_a^\beta})_{(n-k)\times (n-k)}$.
$TM|_S$的转移函数即为$g_{\alpha\beta}=\begin{pmatrix}
            h_{\alpha\beta} & *\\
            0 & q_{\alpha\beta}
        \end{pmatrix}=(\frac{\partial {}x_A^\alpha}{\partial {}x_B^\beta})_{n\times n}$.

我们有如下重要定理, 证明可参考其它微分流形教材.

**定理 1.1** (管状邻域定理). *存在$j$将$N$嵌入$M$, 且$j\circ s=i$, 即将零截面映到$S$.* 

称开集$j(N)\subset M$为管状邻域, 记为$T$.

Poincaré对偶与Thom类
--------------------

记$\Phi$为$S$法丛$N$的Thom类, 则由Thom同构,
$H^\ast (S)\cong H_{cv}^{\ast +n-k}(N)\cong H_{cv}^{\ast +n-k}(T)\rightarrow H^{\ast +n-k}(M)$,
最后一个映射为零延拓.

**引理 1.1**. *$S$的闭Poincaré对偶$[\eta_S]=j_\ast \Phi\in H^{n-k}(M)$,* 

**证:** 只需证明$j_\ast \Phi$满足对偶性质. 记$l:S\rightarrow T$为包含,
其为$\pi:T\rightarrow S$为零截面. 它们在上同调的层面为互逆的,
从而$\omega|_T=\pi^\ast l^\ast (\omega|_T)+d\tau$, $\tau\in \Omega^{k-1}(T)$

$$\begin{aligned}
                \int_M\omega\wedge j_*\Phi&=\int_T\omega|_T\wedge \Phi & j_*\text{为零延拓}\\
                &=\int_T \pi^*l^*(\omega|_T)\wedge \Phi+\int_T d\tau \wedge \Phi&\\
                &=\int_S l^*(\omega|_T)\wedge \pi_*\Phi&\text{Stokes定理+投射公式}\\
                &=\int_S i^*\omega.&\pi_*\Phi=1\quad+\quad{\omega|_T}|_S=\omega|_S
            \end{aligned}$$

又因为子流形$S$在$M$中的管状邻域可充分小, 我们得到:

**命题 1.1** (局部化原理). *闭子流形$S$的Poincaré对偶的支集可缩小到$S$任意给定的管状邻域中.* 

应用
----

### 横截相交子流形的Poincaré对偶

称$M$中两个子流形$R,S$为横截相交的, 若$\,\forall\,x\in R\cap S$,
$T_xR+T_xS=T_xM$.

设$R,S$为流形$M$中横截相交的闭子流形,
则$R\cap S$也是闭子流形且$\dim R\cap S=\dim R+\dim S-\dim M$.
进一步$\operatorname{codim}_M R\cap S=\operatorname{codim}_M R+\operatorname{codim}_M S$.

$R\cap S$在$M$中法丛$N_{(R\cap S)/M}=(N_{R/M}\oplus N_{S/M}) |_{R\cap S}$.
将法丛嵌入到$M$中为管状邻域,
则$\Phi(N_{(R\cap S)/M})=\Phi(N_{R/M})\wedge \Phi(N_{S/M})$,
从而$\eta_{R\cap S}=\eta_R\wedge \eta_S$.

**命题 1.2**. *两个横截相交闭子流形的交的Poincaré对偶等于这两个子流形的Poincaré对偶的外积.* 

### Poincaré对偶的拉回

设$f:M'\rightarrow M$是光滑映射, $S$是$M$的闭子流形.
若$\,\forall\,x\in f^{-1}(S)$, $f_\ast (T_x M')+T_{f(x)}S=T_{f(x)}M$,
则称映射$f$横截于子流形$S$.
即$f(M')$要么与子流形$S$不相交($f^{-1}(S)=\varnothing$自动成立),
要么横截相交($f_\ast (T_x M')=T_{f(x)}f(M')$).

这时, $f^{-1}(S)$是$M'$的光滑子流形, 且任意$S$在$M$中的管状邻域$T$,
$f^{-1}T$是$f^{-1}(S)$在$M'$中的管状邻域. 由Thom类的函子性,
$f^\ast $与$\mathcal{T}$, $j_\ast $均可换.
这时我们有$f^\ast \eta_S=f^\ast j_\ast \Phi(T)=j_\ast \mathcal{T}f^\ast (1)=j_\ast \Phi(f^{-1}T)=\eta_{f^{-1}(S)}$.
即:

**命题 1.3**. *设$f:M'\rightarrow M$是光滑映射, 横截于$M$的闭子流形$S$. 若$[\eta_S]$是$S$在$M$中的Poincaré对偶, 则$f^\ast [\eta_S]$是$f^{-1}(S)$在$M'$中的Poincaré对偶.* 

文章最后更新于 2021-10-10 21:10:53 
