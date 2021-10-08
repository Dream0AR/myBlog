---
title: 《代数拓扑与微分形式》笔记(5-2)-Künneth公式
date: 2021-09-22 18:30:38
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

Künneth公式
-----------

设$M$, $F$是流形, 且$M$的de Rham上同调的维数是有限的, 则
$$H^n(M\times F)=\sum_{p+q=n} H^p(M)\otimes_\mathbb{R}H^q(F).$$

**证:** 假定$M$有有限好覆盖. 取$M\times F$到$F$, $M$的投射为$\rho,\pi$,
则其诱导$\psi:\Omega^{\ast }(M)\otimes \Omega^\ast (F)\rightarrow \Omega^\ast (M\times F)$,
$\psi(\omega\otimes \phi)=\pi^\ast \omega\wedge \rho^\ast \phi.$
由于$\pi^\ast$, $\rho^\ast$与$d$可交换, $\psi$可约化到上同调间的映射.

若$M\approx \mathbb{R}^m$(好覆盖仅为一个开集), 则由Poincaré引理,
$H^n(\mathbb{R}^m\times F)=H^n(\mathbb{R}^{m-1}\times F)=\cdots=H^n(F)=H^0(\mathbb{R}^m)\otimes H^n(F)= \sum_p H^{p}(\mathbb{R}^m)\otimes H^{n-p}(F).$

设$U,V$为$M$的开集, 固定$n$, 做上同调的MV序列.
将每项与$H^{n-p}(F)$做张量积, 再把每项关于$p$做直和, 得到新的MV序列.
该MV序列又可通过链映射$\psi$打到$M\times F$对应的MV序列上,
由zig-zag引理该图可交换.

交换图有点大\...不打了先.

从而借助MV序列, 若Künneth公式对$U,V,U\cap V$成立, 其对$U\cup V$也成立.
由MV方法, 归纳好覆盖开集个数即可.

Leray-Hirsch定理
----------------

$M\times F$可看作$M$上以$F$为纤维的平凡纤维丛,
因此Künneth公式可以推广到更一般的情形, 这就是**Leray-Hirsch定理**.
先介绍一些纤维丛的概念.

设$G$是拓扑群, $F$是拓扑空间, 设$G$对$F$有一个**左作用**,
即$\,\forall\,g\in G$定义了一个连续同胚$g:F\rightarrow F$, 满足
$g_1(g_2(v))=(g_1g_2)(v)$, $\,\forall\,g_1,g_2\in G$, $v\in F.$
称作用是**有效作用**, 若$g(y)=y$,
$\,\forall\,y\in F\Rightarrow g=1\in G.$

在此基础上, 再加入$E,B$为拓扑空间, $\pi:E\rightarrow B$是连续满射.
设$B$有开覆盖$\{U_\alpha\}_{\alpha\in I}$满足:

(i) 对每个$\alpha\in I$, 有保纤维的同胚:
    $\phi_\alpha:E_{U_\alpha}:=\pi^{-1}(U_\alpha)\rightarrow U_\alpha\times F$,
    即$\phi_\alpha$是同胚且$\operatorname{pr}_1\circ\phi_\alpha=\pi.$

(ii) $\phi_\alpha,\phi_\beta$诱导了$g_{\alpha\beta}:U_{\alpha\beta}\rightarrow G$,
     $(\phi_\alpha\circ \phi_\beta^{-1})(x,v)=(x,g_{\alpha\beta}(x)(v)).$

则称$\pi:E\rightarrow B$是以$F$为纤维的**纤维丛**, **结构群**为$G$,
**底空间**为$B$, **全空间**为$E$.
$\{(U_\alpha,\phi_\alpha)\}_{\alpha\in I}$为纤维丛的一个**局部平凡化**.
对$x\in B$, $\pi^{-1}(x)$即称为点$x$的纤维, 记作$E_x$.

在研究上同调时, 假定$E,B,F$是光滑流形,
$G$无特殊说明为$F$的微分同胚群$\operatorname{Diff}(F)$.

设$\pi:E\rightarrow M$是以$F$为纤维的光滑纤维丛.
假定$E$上有上同调类$e_1,...,e_r$,
限制在每条纤维$E_x$上形成了$H^\ast (E_x)$的一组基, 则可定义
$$\psi:H^\ast (M)\otimes \mathbb{R}\{e_1,...,e_r\}\rightarrow H^\ast (E).$$

**定理 1.1** (Leray-Hirsch 定理). *在上述假定下, 若$M$有有限好覆盖, 则$\psi$是同构, 有$H^\ast (E)\cong H^\ast (M)\otimes \mathbb{R}\{e_1,...,e_r\} \cong H^\ast (M)\otimes H^\ast (F).$* 

**证:** 由于有限好覆盖中的$U_\alpha\approx \mathbb{R}^n$为可缩空间,
其上纤维丛平凡,
对$E|_{U_\alpha}$的Leray-Hirsch定理退化为$U_\alpha\times F$的Künneth公式.

用MV方法即可借助好覆盖, 将该论断归纳到$M$上.

文章最后更新于 2021-09-22 18:30:43 
