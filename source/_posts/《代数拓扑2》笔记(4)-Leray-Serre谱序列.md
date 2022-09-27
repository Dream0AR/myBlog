---
title: 《代数拓扑2》笔记(4)-Leray-Serre谱序列
date: 2022-09-27 23:15:43
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## 回顾

对于纤维丛 

$$
F\rightarrow E\xrightarrow{\pi} B,\quad \pi_1B=0.
$$




$$
E^2_{p,q}=H_p(B;H_q(F))\Rightarrow E^\infty_{p,q}=G_pH_{p+q}(E).
$$



考虑一些例子. 对于纤维丛


$$
S^1\rightarrow S^\infty\rightarrow \mathbb{C}\mathrm{P}^\infty,
$$




$$
E^2_{p,q}=H_p(\mathbb{C}\mathrm{P}^\infty)\otimes H_q(S^1),
$$


由$S^\infty$的同调,
$E^2_{p,q}$上的$\partial_2:E^2_{2k,0}\cong E^2_{2k-2,1}$必须是同构,
$k\ge 1.$

对于Hopf纤维化


$$
S^1\rightarrow S^3\rightarrow S^2=\mathbb{C}\mathrm{P}^1,
$$


也可以通过类似的方法得到谱序列的结构. 计算$\partial_2$很少直接计算,
第一种常见的计算方式就是上面的倒推法, 另一种是利用函子性质.

注意到第二个例子中的纤维丛是第一个例子的拉回,
由映射$\mathbb{C}\mathrm{P}^1\rightarrow \mathbb{C}\mathrm{P}^\infty.$
那么由于Leray-Serre谱序列有函子性质, 链映射与微分可交换.
这样就可以通过某个谱序列的微分得到另一个谱序列的微分.

## 局部系数

对拓扑空间$B,$ 记其万有覆盖空间为$\widetilde{B},$ $\pi=\pi_1(B),$
$M$是一个(左)$\mathbb{Z}[\pi]$模($\pi$作用在$M$上). 定义


$$
C_n(B;M):=C_n(\widetilde{B})\bigotimes_{\mathbb{Z}[\pi]} M,
$$


那么可以如下行定义$\pi$作用在$\widetilde{B}$上,
诱导$\pi$在$C_n(\widetilde{B})$上的作用,
从而$C_n(\widetilde{B})$是一个(左)$\mathbb{Z}[\pi]$模.

$\,\forall\,c\in C_n(\widetilde{B}),$ $m\in M,$ $r\in \pi,$


$$
(r^{-1}c)\otimes m=c\otimes (rm), \text{或} (rc)\otimes (rm)=c\otimes m.
$$


$-\bigotimes_{\mathbb{Z}_\pi}M$是一个函子, $C_n(B;M)$是链复形.
它的同调$H_n(B,M)$是局部系数在$M$中的$B$的同调.

若$\pi_1B$在$M$上作用平凡, $B,\widetilde{B}$为CW复形. 那么


$$
C_n^{CW}(B;M)=C_n^{CW}(\widetilde{B})\bigotimes_{\mathbb{Z}[\pi]}M=C_n^{CW}(B;\mathbb{Z})\bigotimes_{\mathbb{Z} }M,
$$


$H_n(B;M)$就是$B$的系数在$M$中的同调.

若$M=\mathbb{Z}[\pi],$


$$
C_n(B;\mathbb{Z}[\pi])=C_n(\widetilde{B})\bigotimes_{\mathbb{Z}[\pi]}\mathbb{Z}[\pi]=C_n(\widetilde{B}),
$$


因此$H_n(B;\mathbb{Z}[\pi])=H_n(\widetilde{B}).$

若$M:=\mathbb{Z}[\pi/\pi'],$ $\pi'\subset \pi.$ 那么


$$
C_n(B;\mathbb{Z}[\pi/\pi'])=C_n(\widetilde{B})\bigotimes_{\mathbb{Z}[\pi]}\mathbb{Z}[\pi/\pi']=C_n(B'),\quad B'=\widetilde{B}/\pi'.
$$




$$
H_n(B;\mathbb{Z}[\pi/\pi'])=H_n(B';\mathbb{Z}).
$$



类似地, 定义


$$
C^n(B;M)=\operatorname{Hom}_{\mathbb{Z}[\pi]}(C_n(\widetilde{B}),M),
$$


为一个上链复形, 上同调记为$H^n(B;M).$

若$B$为有限复形,


$$
H^n(B;\mathbb{Z}[\pi])\cong H_c^n(\widetilde{B};\mathbb{Z})
$$



对于不可定向流形上的Poincaré对偶, 记$N$为闭的不可定向$n$维流形,
$\pi_1(N,x)\xrightarrow{\rho} \{\pm 1\}$作用在$\mathbb{Z}\cong H(N,N\setminus \{x\})$上.
记$H_k(N;\mathbb{Z})$为整系数同调,
$H_k(N;\widetilde{\mathbb{Z} })$为关于$\rho$中局部系数同调.

**定理 1**. *对$n$维闭流形$N,$ $H^k(N;\mathbb{Z})\cong H_{n-k}(N;\widetilde{\mathbb{Z} }),$ $H^k(N;\widetilde{\mathbb{Z} })\cong H_{n-k}(N;\mathbb{Z}).$ 同构由和基本类$[N]\in H_n(N;\widetilde{\mathbb{Z} })$的卡积给出.* 

## 回到谱序列

考虑$\pi_1B$不一定非零的纤维化 

$$
F\rightarrow E\rightarrow B.
$$


回忆每个$\gamma:[0,1]\rightarrow B$给出了同伦$L_\gamma:F_{\gamma(0)}\rightarrow F_{\gamma(1)}.$
若$B$道路连通,


$$
\pi_1(B,b)\rightarrow h\operatorname{Aut}(F_b)/\sim \rightarrow \operatorname{Aut}(H_q(F)),
$$




$$
\gamma\mapsto L_\gamma\mapsto L_{\gamma^\ast }.
$$



$\pi_1(B,b)$作用在$H_q(F_b)$上, 称为与纤维化关联的**单值作用**(monodromy
action).

对于纤维丛 

$$
S^1\rightarrow U(2)\rightarrow \mathbb{R}\mathrm{P}^3,
$$


构造通过$U(1)\hookrightarrow U(2),$
$\frac{U(2)}{U(1)}=\frac{SU(2)\approx S^3}{\{\pm 1\} }=\mathbb{R}\mathrm{P}^3.$

事实上, $\pi_1(\mathbb{R}\mathrm{P}^3)$平凡地作用在$H_i(S^1)$上,
因为它的作用是个180度旋转, 这不改变$S^1$($H_1(S^1)$生成元)的定向.

文章最后更新于 2022-09-27 23:15:45 
