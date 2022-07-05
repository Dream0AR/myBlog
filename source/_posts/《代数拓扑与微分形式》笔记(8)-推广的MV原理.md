---
title: 《代数拓扑与微分形式》笔记(8)-推广的MV原理
date: 2021-10-19 21:45:03
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

这节课要把MV序列从两个开集推广到可数多个开集. 主要想法来自Weil.

可数多个开集的推广
------------------

$\{U_\alpha\}$为$M$开覆盖, $I$为可数全序集. 有如下包含序列:

$$M\leftarrow \bigsqcup_{\alpha_0} U_{\alpha_0}\begin{matrix}
            \xleftarrow{\partial_0}\\\xleftarrow{\partial_1}
        \end{matrix} \bigsqcup_{\alpha_0<\alpha_1} U_{\alpha_0\alpha_1}\begin{matrix}
            \xleftarrow{\partial_0}\\\xleftarrow{\partial_1}\\\xleftarrow{\partial_2}
        \end{matrix}\cdots$$

此处$\partial_i$指忽略第$i$个开集.
那么这样的包含映射$\partial_i$诱导限制映射$\delta_i$.
进而有如下限制序列:

$$\Omega^*(M)\rightarrow \prod_{\alpha_0} \Omega^*(U_{\alpha_0})\begin{matrix}
            \xrightarrow{\delta_0}\\\xrightarrow{\delta_1}
        \end{matrix} \prod_{\alpha_0<\alpha_1} \Omega^*(U_{\alpha_0\alpha_1})\begin{matrix}
            \xrightarrow{\delta_0}\\\xrightarrow{\delta_1}\\\xrightarrow{\delta_2}
        \end{matrix}\cdots$$

定义差分算子
$$\delta: \prod_{\alpha_0<\cdots<\alpha_p} \Omega^\ast (U_{\alpha_0\cdots\alpha_p})\rightarrow \prod_{\alpha_0<\cdots<\alpha_{p+1} } \Omega^\ast (U_{\alpha_0\cdots\alpha_{p+1} }),$$

$\delta=\sum_{i=0}^{p+1}(-1)^i\delta_i$.
$\delta\omega$在$\Omega^\ast (U_{\alpha_0\cdots\alpha_{p+1} })$上的分量即为$\sum_{i=0}^{p+1}(-i)^i \omega_{\alpha_0,...,\hat\alpha_i,...,\alpha_{p+1} }$.

容易证明, $\delta^2=0$. 事实上,
目前为止$\omega_{\alpha_0...\alpha_p}$的下标要求$\alpha_0<...<\alpha_p$,
但可以补充定义去掉该要求, 对任意的$\omega_{\alpha_0...\alpha_p}$,
用$\tau$对下标做置换,
定义它为$\operatorname{sgn}(\tau)\omega_{\alpha_\tau}$.
容易验证这样与之前的系统不矛盾.

**命题 1.1** (推广的MV序列). *我们有正合列: $0\rightarrow \Omega^\ast (M)\xrightarrow{r}\prod \Omega^\ast (U_{\alpha_0})\xrightarrow{\delta}\prod\Omega^\ast (U_{\alpha_0\alpha_1})\rightarrow\cdots$* 

**证:** 显然限制映射$r$是单射,
只需要证明在$\prod \Omega^\ast (U_{\alpha_0...\alpha_p})$处正合.

$\,\forall\,\alpha_0,\alpha_1$,
$(\delta_\omega)_{\alpha_0\alpha_1}=\omega_{\alpha_1}-\omega_{\alpha_0}=0$当且仅当$\omega_{\alpha_1}$,
$\omega_{\alpha_0}$在$U_{\alpha_0\alpha_1}$上相容,
当且仅当$\omega_{\alpha}$可以整体定义为$\eta$, 从而$r(\eta)=\omega$.

对于后面的复形, 由于$\delta^2=0$,
只需验证$\ker\delta\subset \operatorname{Im}\delta$.
取$\tau_{\alpha_0\cdots\alpha_{p-1} }=\sum_{\alpha}\rho_\alpha\omega_{\alpha\alpha_0\cdots\alpha_{p-1} }$.
接下来$(\delta\omega)_{\alpha \alpha_0...\alpha_p}=\omega_{\alpha_0\cdots\alpha_p}+\sum_{i=0}^p(-1)^{i+1}\omega_{\alpha\alpha_0\cdots\hat\alpha_i\cdots\alpha_p}=0$,
由此推知$\delta{\tau}=\omega_{\alpha_0\cdots\alpha_p}$.

事实上$\tau$给出了复形上的一个同伦算子$K$,
$(K\omega)_{\alpha_0\cdots\alpha_{p-1} }=\sum_\alpha\rho_\alpha\omega_{\alpha\alpha_0\cdots\alpha_{p-1} }$.
满足有$\delta K+K\delta=\mathrm{id}$. 对上闭链, 称$K$是$\delta$的右逆.

双复形
------

记$K^{p,q}=C^p(\mathcal{U},\Omega^q)=\prod \Omega^q(U_{\alpha_0\cdots\alpha_p})$.
其上的元素称为$q$-形式值的$p$-上链.

将$(p,q)$视为$\mathbb{Z}^2$上的坐标, 则有一张交换图,
行向右的运算为差分算子, 列向上的运算为微分算子.
交换是因为先限制再外微分等于先外微分再限制, 且外微分有线性性.

令$K^n=\oplus_{p+q=n}K^{p,q}$, $D=D'+D''$, $D'=\delta$, $D''=(-1)^pd$.
则现在$D',D''$带符号交换, 因此$D^2=0$, $\{K^\ast ,D\}$成为一个复形.

$C^\ast (\mathcal{U},\Omega^\ast )$称为**Čech-de Rham复形**,
其上的元简称$D$-上链, 上同调记为$H^\ast _D\{C^\ast (\mathcal{U},\Omega^\ast )\}$.

对链复形进行增广, 在$(-1,q)$位置, 增加$\Omega^p(M)$, 向右有限制映射$r$,
向上是微分算子. 再在左侧再加上$0$向右映射, 则由先前的命题, 所有行正合.

**命题 1.2** (推广的MV原理). *$r^\ast :H^\ast _{dR}(M)\approx H_D\{C^\ast (\mathcal{U},\Omega^\ast )\}$.* 

首先$r$是链映射, 所以$r^\ast $定义合理, $r^\ast [\omega]_d=[r\omega]_D$.

接下来证$r^\ast $既满又单即可. 利用行的正合性, 进行基本的图追踪即可.
沿对角线走, 一步步将多余的分量截掉.

应用
----

可以看出, 若增广双复形每行都是正合的,
那么它的$D$-上同调同构于初始列即增广列的上同调.

取$C^p(\mathcal{U},\mathbb{R})=\prod\{U_{\alpha_0\cdots\alpha_p}\text{上局部常值函数}\}$,
则有包含映射$i:C^p(\mathcal{U},\mathbb{R})\rightarrow C^p(\mathcal{U},\Omega^0)$,
且$\operatorname{Im}i=\ker d$.

有复形$0\rightarrow C^0(\mathcal{U},\mathbb{R})\xrightarrow{\delta}C^1(\mathcal{U},\mathbb{R})\rightarrow\cdots$,
称其上同调为开覆盖$\mathcal{U}$的**Čech上同调**, 是一个纯组合对象.

与先前证明类似地, 若每列正合, 添加增广行,
则它的上同调也同构于双复形的$D$-上同调.

我们将上面构造的复形作为增广行. 由Poincaré引理,
若$\mathcal{U}$是一个好覆盖, 那么每列确实正合. 从而:

**定理 1.3**. *$H^\ast (M)\cong H^\ast (\mathcal{U},\mathbb{R})$.* 

所以我们有一个先验来看并不平凡的推论:

**推论 1.4**. *Čech上同调$H^\ast (\mathcal{U},\mathbb{R})$和好覆盖$\mathcal{U}$选取无关.* 

另一方面, 若流形具有有限好覆盖, $H^\ast (\mathcal{U},\mathbb{R})$有限维.
从而:

**推论 1.5**. *有限型流形$M$的de Rham上同调$H_{dR}^\ast (M)$是有限维的.* 

特别地, 紧流形总具有有限好覆盖, 从而de Rham上同调是有限维的.

文章最后更新于 2021-10-19 21:45:05 
