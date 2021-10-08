---
title: 《代数拓扑与微分形式》笔记(6-2)-Thom同构
date: 2021-09-23 15:06:41
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

向量丛上的不变量: 紧垂直上同调, 由沿纤维积分给出.

向量丛(全空间)的紧上同调
------------------------

若$s:M\rightarrow E$为零截面, 则它把$M$嵌入到$E$. $s(M)$为$E$的形变收缩,
于是$H^\ast (E)\cong H^\ast (M)$. 那么受Poincaré引理启发, 对于紧上同调,
是否有$H_c^\ast (E)\cong H_c^{\ast -n}(M)$? 但对开Möbius带就不成立.

现在我们将具有有限好覆盖的流形称为**有限型流形**.

**引理 1.1**. *$\pi:E\rightarrow M$为秩$n$向量丛. 若$E,M$是可定向有限型流形, 则公式成立.* 

由Poincaré对偶转化为上同调的对偶空间, 再由同伦不变性即得.

若$M$为有限型流形, 则$E$也是. 事实上, 若$M$可定向, $\pi$为可定向向量丛,
则$E$也是可定向的. 只需利用$M$上的坐标函数$\psi_\alpha$,
以及$E$的定向平凡化$\phi_\alpha$自然地构造$E$上的坐标函数即可.
即$E$的坐标图册为
$\{(E|_{U_\alpha},(\psi_\alpha\times \mathrm{id})\circ\phi_\alpha)\}$.
容易验证其为定向的, 称为局部乘积定向.

从而有如下命题:

**命题 1.1**. *若$M$为可定向有限型流形, $\pi:E\rightarrow M$为秩$n$可定向向量丛, 则$H_c^\ast (E)\cong H_c^{\ast -n}(M).$* 

事实上仿照后文Thom同构证明与MV方法, 可去掉$M$的可定向性假设.

紧垂直上同调与沿纤维积分
------------------------

记$\Omega^\ast _{cv}(E)$为垂直方向具紧支集的微分形式复形,
即$\omega\in\Omega_{cv}^\ast (E)$当且仅当对任意紧集$K\subset M$,
$\operatorname{supp}\omega\cap \pi^{-1}(K)$紧.
称该微分形式**在垂直方向具紧支集**. $H_{cv}^\ast (E)$称**紧垂直上同调**.
对这样的形式, 限制在$E_x$上具紧支集, 因此可沿纤维积分.

记沿纤维积分$\pi_\ast :\Omega_{cv}^\ast (E)\rightarrow \Omega^{\ast -n}(M)$.
先设$E$是平凡丛.
将$\omega\in \Omega_{cv}^\ast (E)$分解为含$dt_1\wedge \cdots\wedge dt_n$的项和其他项的线性组合.
令$\pi_\ast :\pi^\ast \phi\wedge f(x,t)dt_1\wedge \cdots\wedge dt_n\mapsto \phi\int_{\mathbb{R}^n}f(x,t)dt_1\cdots dt_n$,
其它形式映为$0$. 事实上这就是以前记号的高维推广.

对任意定向向量丛, 将$\pi_\ast \omega$在每个局部平凡化邻域做即可.
但需要验证的是, 取两块$U_\alpha,U_\beta$与其上的坐标函数、平凡化,
需要验证其上的$\pi_\ast \omega_\alpha, \pi_\ast \omega_\beta$可以拼起来.
事实上这就是重积分的积分变换公式.

当然, 也可直接在操作层面处理,
利用单位分解将$\omega$分为在每个$U_\alpha$上支撑的$\omega_\alpha$的和,
然后做$\pi_\ast$沿纤维积分即可. 接下来我们有:

**命题 1.2**. *$\pi_\ast$为链映射, 从而诱导紧垂直上同调间的映射.* 

对乘积丛$E=M\times \mathbb{R}^n$验证即可, 利用定义展开,
和之前证明链同伦差不多.

**命题 1.3** (投射公式). *$\,\forall\,\tau\in\Omega^\ast (M)$, $\omega\in \Omega_{cv}^\ast (E)$, 则$\pi_\ast (\pi^\ast \tau\wedge \omega)=\tau\wedge \pi_\ast \omega$. 若$M$为$m$维定向流形, 设$\omega\in\Omega^{q}_{cv}(E)$, $\tau \in \Omega_c^{m+n-q}(M)$, $E$取局部乘积定向, 则$\int_E\pi^\ast \tau\wedge\omega=\int_M\tau\wedge\pi_\ast \omega.$* 

做简单的验证即好, 和之前的证明差不多, 将形式分为两个部分分别验证.

后半命题将$M$单位分解即可, 证明要用到Fubini定理,
就是在$E|_{U_\alpha}$上积分和先沿纤维积分再在$U_\alpha$上积分是一样的.

Thom同构
--------

接下来将紧支集上的Poincaré引理证明照搬即可得到:

**命题 1.4** (紧垂直支集的Poincaré引理). *$\pi_\ast :H_{cv}^\ast (M\times \mathbb{R}^n)\cong H^{\ast -n}(M).$* 

接下来我们证明一般情形:

**定理 1.1** (Thom同构). *若$\pi:E\rightarrow M$为有限型流形$M$上秩$n$可定向向量丛, 则$H_{cv}^\ast (E)\cong H^{\ast -n}(M).$* 

证明用到$U\cup V$上的MV序列以及其上纤维$E|_{U\cup V}$的MV序列.
其间由链映射$\pi_\ast$联系. 由五引理,
Thom同构对$E|_U,E|_V,E|_{U\cap V}$成立, 则也对$E|_{U\cup V}$成立.
从而归纳好覆盖开集个数, 由MV方法即得.

记$\mathcal{T}:H^\ast (M)\rightarrow H_{cv}^{\ast +n}(E)$为$\pi_\ast$的逆,
称其为Thom同构. 对$1\in H^0(M)$,
$\Phi=\mathcal{T}(1)\in H_{cv}^n(E)$称为$E$的Thom类.

$\mathcal{T}(\omega)=\mathcal{T}\pi_\ast (\pi^\ast \omega\wedge \Phi)=\pi^\ast \omega\wedge \Phi.$
因为$\mathcal{T}\pi_\ast =\mathrm{id}$, $\pi_\ast \mathcal{T}(1)=1.$

**命题 1.5**. *$\Phi$是$H_{cv}^n(E)$的唯一上同调类, 限制在每个$E_x$上为$H_c^n(E_x)$生成元.* 

**证:** $\pi_\ast \Phi=1$, $\pi_\ast \Phi(x)=\int_{E_x}\Phi(x,t)dt=1$,
从而$\Phi|_{E_x}\in H_c^n(E_x)$是生成元.

若$\Phi'$也满足该性质, 则$\pi_\ast \Phi'=1$.
$\pi_\ast (\pi^\ast \omega\wedge\Phi')=\omega$,
$\mathcal{T}(\omega)=\pi^\ast \omega\wedge\Phi'$,
从而$\Phi'=\mathcal{T}(1)=\Phi.$

**命题 1.6**. *设$\pi_1:E\rightarrow M$, $\pi_2:E'\rightarrow M$为两定向向量丛, 则$\Phi(E\oplus E')=\operatorname{pr}_1^\ast \Phi(E)\wedge \operatorname{pr}_2^\ast \Phi(E')$.* 

**证:** 取右式为$\Phi'$, 在$E_x\oplus E'_x$上积分发现为$1$,
由上一命题的唯一性即得.

事实上, $\Phi$也有函子性, 即$f:N\rightarrow M$为光滑映射,
则$\Phi(f^{-1}E)=f^\ast \Phi(E)$, 证明留做习题. (确实是我们的习题)

文章最后更新于 2021-09-23 15:07:12 
