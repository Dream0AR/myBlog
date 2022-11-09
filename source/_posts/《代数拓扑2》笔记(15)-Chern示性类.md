---
title: 《代数拓扑2》笔记(15)-Chern示性类
date: 2022-11-07 18:41:04
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## 回顾

横截相交与杯积由Poincaré对偶联系, $PD([S\cap T])=PD([S])\cup PD([T]).$
一个应用是考虑$H^\ast (\mathbb{C}\mathrm{P}^n;\mathbb{Z})=\mathbb{Z}[\tau]/\tau^{n+1},$
那么$\tau=PD[H],$
$H$为$\mathbb{C}\mathrm{P}^n$中的超平面$\mathbb{C}\mathrm{P}^{n-1}\hookrightarrow \mathbb{C}\mathrm{P}^n.$

另一个应用是Bezout定理. 设$F_i(x,y,z)$为一个齐次多项式, $\deg=d_i,$
$i=1,2.$
那么$V_i:=\{[x:y:z]|F_i=0\}\subset \mathbb{C}\mathrm{P}^2$称为$\deg d_i$的代数曲线.
$V_i$为$\mathbb{C}\mathrm{P}^2$中的$1$维子流形.

$[V_1]\in H_2(\mathbb{C}\mathrm{P}^2)\cong \mathbb{Z}.$
令$\tau_1:=PD[V_1]\in H^2(\mathbb{C}\mathrm{P}^2)=\mathbb{Z}\{\tau\}.$
断言$\tau_1=d_1\tau.$ 取$H\subset \mathbb{C}\mathrm{P}^2,$
$H\cap V_1=d_i$个点. 那么$PD(H)\cup PD(V_1)=PD(d_i[\ast ]),$
$\tau\cup \tau_1=d_1\tau^2.$ 这就推知了$\tau_1=d_1\tau.$

从而$\tau_1\cup \tau_2=d_1d_2\tau^2,$ $[V_1\cap V_2]=d_1d_2$个点,
若$V_1,V_2$横截相交.

## 复向量丛

考虑$\pi:E\rightarrow B,$ 纤维为$\mathbb{C}$-线性空间.
如我们有$\mathbb{C}\mathrm{P}^n$上的典范复线丛$\gamma_n^1.$

若$\omega$为$n$维复向量丛, 那么它也是一个$2n$维实向量丛.
此时它总是可定向的实向量丛. 对于向量空间,
$\operatorname{Iso}_\mathbb{R}(\mathbb{R}^{2n},V_\mathbb{R})\cong GL_{2n}(\mathbb{R}),$
$\operatorname{Iso}_\mathbb{C}(\mathbb{C}^n,V)\cong GL_n(\mathbb{C}).$
那么$\operatorname{Iso}_\mathbb{C}(\mathbb{C}^n,V)\subset \operatorname{Iso}_\mathbb{R}(\mathbb{R}^{2n},V_\mathbb{R})$诱导了$GL_n(\mathbb{C})\subset GL_{2n}(\mathbb{R}).$
这就迫使包含只落在$GL_{2n}(\mathbb{R})$的某一个连通分支中,
给出了一个定向.

定义$(\gamma_1^1)^V:=\operatorname{Hom}_\mathbb{C}(\gamma_1^1,\varepsilon),$
此时$\varepsilon$为平凡复线丛.
这是一个$\dim_\mathbb{C}=1$的$\mathbb{C}\mathrm{P}^1$上线丛.
断言$e((\gamma_1^1)^V_\mathbb{R})=\tau=PD([\ast ])\in H^2(\mathbb{C}\mathrm{P}^1;\mathbb{Z}),$
或者说$\left<{}e,[\mathbb{C}\mathrm{P}^1]\right>=1.$

固定一个向量$v\in \mathbb{C}^2\setminus\{0\},$
我们有$(\gamma_1^1)^V$的截面$L\mapsto (u\mapsto \left<{}u,v\right>).$
此时 

$$
Z_s=\{L:s(L)=0\}=\{\left<{}v\right>^\perp\},
$$


为$\mathbb{C}\mathrm{P}^1$中的一个点. 这样就有


$$
e((\gamma_1^1)^V_\mathbb{R})=PD([Z_s])=PD([\ast ])=\tau.
$$



一般地,
$e((\gamma_n^1)^V_\mathbb{R})=\tau\in H^2(\mathbb{C}\mathrm{P}^n;\mathbb{Z}).$

## Chern类

设$\omega$为复向量丛$\mathbb{C}^n\rightarrow E\rightarrow B,$
$B$为CW复形. 取投影丛


$$
\mathbb{C}\mathrm{P}^{n-1}\xrightarrow{\iota} P(E)\rightarrow B.
$$


回忆由Leray-Hirsch,
$H^\ast (\mathbb{C}\mathrm{P}^{n-1};\mathbb{Z})=\mathbb{Z}[b]/b^n.$
事实上选取$b=-\tau,$ 因为$b=e((\tau^1_{n-1})_\mathbb{R}).$

那么$H^\ast (P(E))=H^\ast (B)\{1,x,\cdots,x^{n-1}\},$
$H^\ast (P(E))\xrightarrow{\iota^\ast }H^\ast (\mathbb{C}\mathrm{P}^{n-1}),$
$x\mapsto b.$ 定义Chern类为$c_i=c_i(\omega)\in H^{2i}(B;\mathbb{Z}),$
使得$H^\ast (P(E);\mathbb{Z})$中有$x^n-c_1x^{n-1}+c_2x^{n-2}-\cdots (-1)^nc_n=0.$

Chern类满足如下性质:

1. $c_0=1,$ $c_i=0,$ $\,\forall\,i>n=\dim_\mathbb{C}(\omega);$

2. $c_i(f^\ast \omega)=f^\ast c_i(\omega);$

3. $c(\omega\oplus\eta)=c(\omega)\cup c(\eta),$
 $c(\omega):=\sum_{i=0}^\infty c_i(\omega);$

4. $c_1(\gamma_1^1)=b=-\tau\in H^2(\mathbb{C}\mathrm{P}^1;\mathbb{Z}),$
 $\left<{}c_1(\gamma_1^1),[\mathbb{C}\mathrm{P}^1]\right>=-1.$

为什么选取$b=-\tau$?
我们选取有$c_1(\gamma_n^1)=e((\gamma_n^1)_\mathbb{R})=-\tau.$
我们希望$c_1=e,$ 这就不得不选取相反的符号了.
不过这样的好处是我们有$c_n(\omega)=e(\omega_\mathbb{R}),$
$\,\forall\,$秩$n$复向量丛$\omega.$

我们有分裂原理, 此时是系数为$\mathbb{Z}$的复版本. 可以用它来给出证明.

有这些性质, 我们进而有如下结论:

1. $c(\varepsilon^n)=1,$

2. $c_i(\omega\oplus \varepsilon^n)=c_i(\omega),$

3. $\omega^n$有$k$个独立截面, $\omega^n=\varepsilon^k\oplus\eta^{n-k},$
 $c_i(\omega^n)=c_i(\eta^{n-k})=0,$ $\,\forall\,i>n-k.$

4. 每个仿紧底空间上的$\omega$都能配备Hermitian度量.

5. 若$\omega\cong \eta,$ 则$c_i(\omega)=c_i(\eta).$

6. $c_1(\gamma_n^1)=b=-\tau\in H^2(\mathbb{C}\mathrm{P}^n;\mathbb{Z}).$

## 复Grassmannian流形

$G_n(\mathbb{C}^{n+k}):=\{X|X\subset \mathbb{C}^{n+k},\dim_\mathbb{C}X=n\}.$
类似地, 它是一个紧光滑流形, 为$U_{n+k}/U_n\times U_k.$ 实维数为$2nk.$
我们有$G_n(\mathbb{C}^{n+k})$上的典范丛$\gamma^n.$

**定理 1**. *每个仿紧空间上的秩$n$复向量丛都有一个到$G_n(\mathbb{C}^\infty)$上的$\gamma^n$的丛映照.* 

**定理 2**. *$H^\ast (G_n(\mathbb{C}^\infty);\mathbb{Z})=\mathbb{Z}[c_1,\cdots,c_n].$* 

可以类似实版本证明, 另一种方式为谱序列.
定义$V_n(\mathbb{C}^{n+k}):=\{(v_1,\cdots,v_n)|v_i\in \mathbb{C}^{n+k}, \perp\}.$
我们有一个纤维丛:


$$
U_n\rightarrow V_n(\mathbb{C}^{n+k})\rightarrow G_n(\mathbb{C}^{n+k}),
$$


更清楚地来看:


$$
U_n\rightarrow U_{n+k}/U_k\rightarrow U_{n+k}/U_n\times U_k
$$



可以验证$V_n(\mathbb{C}^{n+k})$是$2k$-连通的,
$U_k\hookrightarrow U_{n+k}$诱导了$\pi_{\le 2k}$的同构.
因此$V_n(\mathbb{C}^\infty)\cong \ast ,$ 存在纤维化
$$
U_n\rightarrow V_n(\mathbb{C}^\infty)\rightarrow
 G_n(C^\infty).
$$

那么由LSSS, $E_2^{p,q}=H^p(G_n)\otimes H^q(U_n)\Rightarrow H^\ast (\ast ).$
回忆$H^\ast (U_n)=\Lambda^\ast (x_1,x_3,\cdots,x_{2n-1}).$
分析谱序列可得$H^\ast (G_n)=\mathbb{Z}[c_1,\cdots,c_n].$

文章最后更新于 2022-11-07 18:41:05 
