---
title: 《代数拓扑与微分形式》笔记(10)-Čech上同调
date: 2021-10-31 20:55:17
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

预层
----

$X$上预层$\mathcal{F}$指, 对$X$的每个开集赋予一个abel群$\mathcal{F}(U)$,
赋予每个开集的包含$V\subset U$群同态$\rho^U_V:\mathcal{F}(U)\rightarrow\mathcal{F}(V)$,
称为限制. 满足范畴论的要求: $\rho^U_U=\mathrm{id}$,
且有传递性$\rho^V_W\circ\rho^U_V=\rho^U_W$.

例如$X$上的连续函数预层, $C^0(U)$是$U$上的连续函数,
$\rho^U_V$就是通常函数的限制. $\Omega^\ast $也是一个预层.
特别地对$0\le q\le \dim M$, $\Omega^q$也是预层.

若$\mathcal{F},\mathcal{G}$是$X$上预层,
对每个开集$U$存在同态$f_U:\mathcal{F}(U)\rightarrow\mathcal{G}(U)$,
使得$\rho^U_Vf_U=f_V\rho^U_V$, 则称$\{f_U\}$为预层上的同态;
如果每个同态都是同构, 则$\{f_U\}$是预层的同构,
$\mathcal{F}\cong \mathcal{G}$.

用范畴论的语言来看,
两个预层的同态$f$就是两个函子$\mathcal{F},\mathcal{G}$上的自然变换.

称$\mathcal{F}$为取值于abel群$G$的常值预层,
若$\mathcal{F}(U)$是$U$上取值于$G$的局部常值函数全体,
且$\rho^U_V$是通常函数的限制.

所以若$U$连通, 则$\mathcal{F}(U)\cong G$,
且若$V\cap U$是两个连通开集的包含, 那么$\rho^U_V=\mathrm{id}_G$.
习惯上将该常值预层就记为$G$.

若有纤维丛$\pi:E\rightarrow M$, 则可在$M$上定义预层$\mathcal{H}^q$,
$\mathcal{H}^q(U)=H^q(\pi^{-1}(U))$, 限制$\rho^U_V$由$i^\ast $诱导,
包含映射$i:\pi^{-1}(V)\rightarrow \pi^{-1}(U)$.
(在预层$\mathcal{H}^q$上可以构造超上同调.)

当$U$可缩时, $\pi^{-1}(U)\cong U\times F$, 由Künneth公式,
$\mathcal{H}^q(U)\cong H^q(F)$. 若$V$为可缩开集的包含,
则$\rho^U_V$为同构.

预层$\mathcal{H}^q$为好覆盖上局部常值预层的一个例子,
它在纤维化谱序列中有基本的重要性.

开覆盖的Čech上同调
------------------

设$\mathcal{F}$是拓扑空间$X$上预层, $\mathcal{U}=\{U_\alpha\}$为开覆盖,
定义$C^0(\mathcal{U},\mathcal{F})=\prod\mathcal{F}(U_\alpha)$.
设$\omega\in C^0(\mathcal{U},\mathcal{F})$,
对每个$U_\alpha$指定$\omega_\alpha\in \mathcal{F}(U_\alpha)$.
$\omega$称为$\mathcal{U}$上取值于$\mathcal{F}$的一个$0$-上链.

定义$C^1(\mathcal{U},\mathcal{F})=\prod\mathcal{F}(U_{\alpha\beta})$,
额外的, 需指定$\omega_{\alpha\beta}=-\omega_{\beta\alpha}$.
称为$1$-上链.

类似地, 可以定义$p$-上链$\omega\in C^p(\mathcal{U},\mathcal{F})$,
对任意$p+1$个开集非空交指定$\omega_{\alpha_0\cdots\alpha_p}$,
要求交换下标后符号取反.

简单起见, 记限制$\rho^U_V(\omega_U)=\omega_U|_V$,
在明了时也可以省去$|_V$, 因为限制具有传递性.

接下来定义差分算子$\delta:C^p(\mathcal{U},\mathcal{F})\rightarrow C^{p+1}(\mathcal{U},\mathcal{F})$,
$\delta\omega$的分量$(\delta\omega)_{\alpha_0\cdots\alpha_{p+1} }=\sum_{i=0}^{p+1}(-1)^i\omega_{\alpha_0\cdots\hat\alpha_i\cdots\alpha_{p+1} }$.

由限制的传递性, $\delta^2=0$.
称复形$\{C^\ast (\mathcal{U},\mathcal{F}),\delta\}$的上同调$H^\ast (\mathcal{U},\mathcal{F})$为覆盖$\mathcal{U}$取值于预层$\mathcal{F}$的Čech上同调.

若$\mathcal{F}$是共变的,
那么有$\partial:C_p(\mathcal{U},\mathcal{F})\rightarrow C_{p-1}(\mathcal{U},\mathcal{F})$,
$(\partial \omega)_{\alpha_0\cdots\alpha_{p-1} }=\sum_{\alpha}\omega_{\alpha\alpha_0\cdots\alpha_{p-1} }$.

回到$\mathcal{F}$上Čech上同调的讨论,
若$\mathcal{V}$是$\mathcal{U}$的一个加细,
即$\,\exists\,\phi:J\rightarrow I$为指标集的映射,
$V_\beta\subset U_{\phi\beta}$, $\,\forall\,\beta\in J$.
$\phi$称为加细映射.

$\phi$诱导了$\phi^\sharp:C^q(\mathcal{U},\mathcal{F})\rightarrow C^q(\mathcal{V},\mathcal{F})$,
$(\phi^\sharp\omega)_{\beta_0\cdots\beta_q}=\omega_{\phi(\beta_0)\cdots\phi(\beta_q)}$.
容易验证, $\phi^\sharp$是一个链映射.

若存在另一个加细映射$\psi:J\rightarrow I$,
则$\phi^\sharp\simeq\psi^\sharp$链同伦. 事实上,
取同伦算子$K:C^q(\mathcal{U},\mathcal{F})\rightarrow C^{q-1}(\mathcal{V},\mathcal{F})$,
$(K\omega)_{\beta_0\cdots\beta_{q-1} }=\sum_{i=0}^{q-1}(-1)^i\omega_{\phi(\beta_0)\cdots\phi(\beta_i)\psi(\beta_i)\cdots\psi(\beta_{q-1})}$即可.

从而,
有诱导映射$\phi^\sharp:H^q(\mathcal{U},\mathcal{F})\rightarrow H^q(\mathcal{V},\mathcal{F})$,
且其与$\phi$选取无关.

有向极限
--------

设有偏序集$(I,\le)$, 若其还满足$\,\forall\,a,b\in I, \,\exists\,c\in I$,
$a,b\le c$, 则称$I$为有向集.

定义群的有向系为群的集类$\{G_\alpha\}$, 以有向集为指标集,
使得$\,\forall\,a\le b$, 存在群同态$f^a_b:G_a\rightarrow G_b$,
$f^a_a=\mathrm{id}$, $f^a_c=f^b_c\circ f^a_b$, 若$a\le b\le c$.

定义等价关系$\sim$, $g_{a}\sim g_b$若$\,\exists\,c$, $a,b\le c$,
$f^a_c(g_a)=f^b_c(g_b)$.
定义群的有向系$\{G_a\}$有向极限为$\lim_{a\in I}G_a=(\prod_{a\in I}G_a)/\sim$,
加法自然定义为$[g_a]+[g_b]=[f^a_c(g_a)+f^b_c(g_b)]$, $a,b\le c$.
良定且有向极限成为群.

拓扑空间的Čech上同调
--------------------

把上面的理论应用到$H^\ast (\mathcal{U},\mathcal{F})$上, 即取:

1.  有向集为$X$的开覆盖集, $I=\{\mathcal{U},\mathcal{V},\cdots\}$

2.  偏序为加细$\mathcal{U}>\mathcal{V}$

3.  abel群取$G_\mathcal{U}=H^\ast (\mathcal{U},\mathcal{F})$

4.  $\phi:\mathcal{V}\rightarrow \mathcal{U}$为加细映射,
    限制$\phi^\sharp:G_\mathcal{U}\rightarrow G_\mathcal{V}$为同态

5.  若$\varphi=\phi\circ\psi$,
    则$\varphi^\sharp=\psi^\sharp\circ\phi^\sharp$

这样$\{H^\ast (\mathcal{U},\mathcal{F})\}_{\mathcal{U}\in I}$成为群的有向系,
它的有向极限$\lim_\mathcal{U}H^\ast (\mathcal{U},\mathcal{F})$称为拓扑空间$X$取值于预层$\mathcal{F}$的Čech上同调,
记为$H^\ast (X,\mathcal{F})$.

**命题 1.1**. *$H^\ast (M,\mathbb{R})\cong H^\ast _{dR}(M)$.* 

**证:** 对于任意开覆盖$\mathcal{U}$,
我们事实上可以取到一个加细的好覆盖$\mathcal{V}$,
因为考虑每点做测地凸邻域即可. 特别地流形满足$C_2$可数性公理,
因此它还是可数的.

$\,\forall\,a,b\in H^\ast (\mathcal{U},\mathcal{F})$, 若$[a]\neq[b]$,
则对每个这样的$\mathcal{V}$, $a,b$在其上的限制不同. 若$[a]=[b]$,
则存在$\mathcal{W}$, $a,b$在其上的限制相同. 那么由传递性,
取$\mathcal{W}$的加细好覆盖$\mathcal{V}$, $a,b$限制在其上也相等.

因此, 我们只需要考察$H^\ast (\mathcal{V},\mathcal{F})$即可,
$\mathcal{V}$为可数好覆盖,
即$H^\ast (M,\mathbb{R})=\lim\limits_{c.g.c-\mathcal{V} }H^\ast (\mathcal{V},\mathbb{R})$,
c.g.c=countable good covers.

然后, 我们知道对于可数好覆盖$\mathcal{V}$,
$H^\ast (\mathcal{V},\mathbb{R})\cong H^\ast _{dR}(M)$. 由于限制映射是链映射,
和$\delta$可换. 在双复形网络上能看出, 可数好覆盖间的限制映射将诱导同构.
因此$H^\ast (M,\mathbb{R})=\lim\limits_{c.g.c-\mathcal{V} }H^\ast (\mathcal{V},\mathbb{R})$中每一项都是$H^\ast _{dR}(M)$,
从而$H^\ast (M,\mathbb{R})\cong H^\ast _{dR}(M)$.

文章最后更新于 2021-10-31 20:55:18 
