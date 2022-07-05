---
title: 《微分流形》第四章-Frobenius定理
date: 2021-11-10 16:15:52
categories: 
- 笔记
- 几何
- 微分流形
mathjax: true
---

对合性
------

**命题 1.1**. *设$\mathcal{D}$是$M$上光滑分布. 若$\mathcal{D}$是可积的, 则$\,\forall\,X,Y\in \chi(\mathcal{D}),$ 即$\,\forall\,p\in M,$ $X_p,Y_p\in \mathcal{D}_p,$ 那么$[X,Y]\in \chi(\mathcal{D}).$* 

**证:** 任取含$p$坐标系$(U,\varphi;x^i),$
要证$[X,Y]_p\in \mathcal{D}_p.$
由可积性过$p$点存在积分子流形$i:N^k\hookrightarrow M,$ 局部来看由秩定理,
可以视其为切片. 从而$X,Y$只在前$k$个自然基上有光滑分量. 计算得到,
$[X,Y]$同样只在前$k$个自然基上有光滑分量,
因此$[X,Y]\in \chi(\mathcal{D}).$

**注 1.2**. *可以证明, 若$X_1,X_2$与$Y_1,Y_2$是$F$相关的, 即$F_\ast X_i=Y_i,$ 则$[X_1,X_2],[Y_1,Y_2]$也是$F$相关的. 由此可以证明在题设下, $[X|_N,Y|_N]$与$[X,Y]$是$i$相关的, 即$i_\ast [X|_N,Y|_N]=[X,Y],$ 从而$[X|_N,Y|_N]=[X,Y]|_N.$* 

**定义 1.3**. *设$\mathcal{D}$是$M$上光滑分布, 若$\,\forall\,X,Y\in \chi(\mathcal{D}),$ $[X,Y]\in \chi(D),$ 则称$\mathcal{D}$是**对合**的.* 

由前面的命题, 可积性$\Rightarrow$对合性. 事实上欲证对合性,
只需说明$\,\forall\,\mathcal{D}$的局部标架场$X_1,\cdots,X_k,$
$[X_i,X_j]\in \chi(\mathcal{D}),$ $\,\forall\,1\le i,j\le k.$
利用标架性质即可说明此时满足对合性的原始条件. 从而这两个条件是等价的.

Frobenius定理
-------------

**定理 1.4** (Frobenius). *设$\mathcal{D}$是$M^m$上$k$维分布. 如果$\mathcal{D}$是对合的, 那么$\,\forall\,p\in M,$ $\,\exists\,$含$p$坐标系$(U,\varphi;x^i)$使得$k$维切片都是$\mathcal{D}$的积分子流形.* 

**证:** $k=1$时, 由Flow box定理, 每点局部都有坐标系,
使得任意$x^1$-曲线为$X$的积分曲线,
即$1$维切片都是$\mathcal{D}$的$1$维积分子流形.

归纳地, 若命题对$k-1$维分布成立,
那么设$\mathcal{D}$是$M$上对合的$k$维分布,
取局部标架场$X_1,\cdots, X_k,$ 那么由对合性,
$$[X_i,X_j]\equiv 0 \mod \{X_1,\cdots,X_k\}.$$

由Flow box定理,
可以取到坐标系使得$X_k=\frac{\partial {} }{\partial {}y_k},$
那么对$1\le \lambda,\mu,\nu\le k-1,$
令$X_\lambda'=X_\lambda-X_\lambda(y^k)X_k,$ 则$X_{\lambda}'(y_k)=0,$
$X_k(y_k)=1,$
从而$\mathcal{D}=\operatorname{span}\{X_1',\cdots,X_{k-1}',X_k\},$
仍是局部标架场.

计算得到,
光是$k-1$维分布$\mathcal{D}':=\operatorname{span}\{X_1',\cdots,X_{k-1}'\}$就满足对合性.
此时由归纳假设, $\mathcal{D}'$是可积分布,
有坐标系$(V,\psi;z^i)$使得$k-1$维切片都是$\mathcal{D}'$的积分子流形.
此时$\frac{\partial {}y^k}{\partial {}z^\lambda}=0,$
$\,\forall\,1\le \lambda\le k-1.$
$\mathcal{D}=\operatorname{span}\{\frac{\partial {} }{\partial {}z^1},\cdots,\frac{\partial {} }{\partial {}z^{k-1} },X_k\}.$

作用$y^k,$
计算得到$[\frac{\partial {} }{\partial {}z^\lambda},X_k]\equiv 0\mod \{\frac{\partial {} }{\partial {}z^1}\cdots\frac{\partial {} }{\partial {}z^{k-1} }\}.$
将$X_k$表示为$\sum_{A=1}^m \xi^A \frac{\partial {} }{\partial {}z^A},$
那么由前面的式子,
$\sum_{A=k}^m\frac{\partial {}\xi^A}{\partial {}z^\lambda}\frac{\partial {} }{\partial {}z^A}=0,$
这就说明$\xi^A=\xi^A(z^k,\cdots,z^m),$ $\,\forall\,A\ge k.$
令$X_k'=X_k-\sum_{\lambda=1}^{k-1}\xi^\lambda\frac{\partial {} }{\partial {}z^\lambda},$
只保留后面的分量. 由Flowbox定理,
可以取到新坐标系使得$X'_{k}=\frac{\partial {} }{\partial {}x^k},$
满足$x^\lambda=z^\lambda,$ $1\le \lambda\le k-1.$ 即前$k-1$个坐标不变.
那么此时即有$\mathcal{D}=\operatorname{span}\{\frac{\partial {} }{\partial {}x^1},\cdots,\frac{\partial {} }{\partial {}x^{k} }\},$
$k$维切片都是积分子流形.

单位分解
--------

**定理 1.5**. *设光滑流形$M^m$上有紧集$\overline{V}\subset U,$ 那么存在$f\in C_c^\infty(M),$ 使得$f\in[0,1],$ $f|_V\equiv 1,$ $f|_{M\setminus U}\equiv 0.$* 

-   设$M$是拓扑空间, $\{A_\alpha\}$是$M$的一族子集.
    如$\bigcup_{\alpha}A_\alpha=M,$
    则称$\{A_\alpha\}$为$M$的一个**覆盖**.

-   设$\{A_\alpha\}$是$M$的覆盖, 如果$\,\forall\,p\in M,$
    存在$U\ni p$使得$U$只与有限个$A_\alpha$相交,
    则称$\{A_\alpha\}$是$M$的**局部有限**的覆盖.

-   设$\{U_\alpha\},$ $\{V_\beta\}$是$M$的两个覆盖.
    若$\,\forall\,\beta,$
    $\,\exists\,\alpha$使得$V_\beta\subset U_\alpha,$
    则称$\{V_\beta\}$是$\{U_\alpha\}$的**加细**.

**定义 1.6**. *$M$是拓扑空间, 若$M$的任意开覆盖$\{U_\alpha\}$有局部有限的加细, 则称$M$是**仿紧**的.* 

现设$M$是$m$维$C^\infty$流形, $\{A_\alpha\}$是$M$的开覆盖.
由第二可数公理, $\{A_\alpha\}$存在可数加细$\{U_j\},$
且每个开集都是坐标图$(U_j,\varphi_j).$ 坐标图可进一步改造为局部有限的,
且$\varphi_j(U_j)=B_1^m(0),$
$\{V_j=\varphi_j^{-1}(B_{1/2}^m(0))\}$也是$M$的开覆盖.

**定义 1.7**. *设$M$为光滑流形. 若$\{f_i\}\in C^\infty(M)$满足$f_i\in [0,1],$ $\sum_i f_i\equiv 1,$ 且$\{\operatorname{supp}f_i\}$是$M$的局部有限的覆盖, 那么称$\{f_i\}$为$M$的**单位分解**.* 

**定理 1.8** (单位分解). *设$M^m$为光滑流形, 则存在单位分解$\{f_i\}.$* 

**证:** $\,\forall\,\bigcup_\alpha A_\alpha\supset M,$ 由上述引理,
存在局部有限加细$\{(U_i,\varphi_i)\},$ $\varphi_i(U_i)=B_1^m(0).$ 进而
$\,\exists\,\{\widetilde{f}_i\}\in C_c^\infty(U_i),$
$\widetilde{f}_i\in[0,1],$ $\widetilde{f}_i|_{V_i}\equiv 1.$
最后取$f_i=\frac{\widetilde{f}_i}{\sum_i \widetilde{f}_i}$即可.

事实上有$\operatorname{supp}f_i\subset U_i\subset A_\alpha,$
称$\{f_i\}$是**从属**于$\{A_\alpha\}$的单位分解.
因此任意开覆盖有从属于之的单位分解.

文章最后更新于 2021-11-10 16:15:52 
