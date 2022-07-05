---
title: 《代数拓扑与微分形式》笔记(6-4)-平面丛的Thom类的显式表示
date: 2021-10-12 10:25:16
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

整体角形式
----------

在定向流形$M$上, 最高次形式是**正的**若它在$M$的定向类中.
取$\sigma\in H^{n-1}(S^{n-1})$为生成元,
$p:\mathbb{R}^n-\{0\}\rightarrow S^{n-1}$为形变收缩,
规定$\sigma$在$S^{n-1}$上是正的当且仅当$dr\wedge p^\ast \sigma$在$\mathbb{R}^n-\{0\}$上是正的.

设$\sigma$是$S^{k-1}$上正形式, 且$\int_{S^{k-1} }\sigma=1$,
则$\psi=p^\ast \sigma$称为$\mathbb{R}^k-0$上的**角形式**.
$[\psi]\in H^{k-1}(\mathbb{R}^k-\{0\})$为生成元.

设$\rho(r)\in C^\infty[0,+\infty)$, $\rho(r)=\begin{cases}
            -1&r\le \delta_1\\
            0&r\ge \delta_2
        \end{cases}$, $\delta_1<\delta_2$, 中间部分光滑连接.
$d\rho=\rho'(r)dr$是一个bump-1形式.

这时, $[d\rho\wedge \psi]\in H_c^k(\mathbb{R}^k)$, 挖去$B_\varepsilon$,
利用$\rho$性质与Stokes定理可证$\int_{\mathbb{R}^k}d\rho\wedge \psi=1$.
即$[d\rho\wedge \psi]$为生成元.

考虑$M$上秩$k$定向向量丛$\pi :E\rightarrow M$, $E^0=E-s(E)$,
$s$为零截面. 设$\left<{},\right>$为度量, 对每条纤维上的向量$v$,
定义$r(v)=\sqrt{\left<{}v,v\right>}$. 那么$r$在$E$上有意义,
$\rho(r)$可视为定义在$E$上的函数.

称$E^0$的一个$k-1$-形式$\psi$为**整体角形式**,
若$\psi$限制在每条纤维$E_x^0\simeq \mathbb{R}^k-\{0\}$上是角形式,
并且$d\psi$能自然延拓成$E$的一个$k$-形式.

若$E^0$上存在整体角形式$\psi$,
则$E$的Thom类为$\Phi=d\rho\wedge\psi+\rho d\psi$.
这是因为限制在纤维上第二项消失, 而第一项积分为$1$.

平面丛欧拉类的显示表示
----------------------

假定$E$是定向平面丛, 即秩为$2$. 取坐标图册与定向平凡化,
在$U_\alpha$上有坐标$(x_1^\alpha,...,x_n^\alpha)$.

利用定向平凡化, 定义$E^0|_{E_\alpha}$的极坐标$r_\alpha$,
$\theta_\alpha$, 从而有坐标$\pi^\ast  x^\alpha, r_\alpha, \theta_\alpha$.
假定$E$上度量保内积, 即转移函数约化到$SO(2)$, 则$r_\alpha=r_\beta$,
我们定义了整体的$r$. 事实上这就是先前的$r(v)=\sqrt{\left<{}v,v\right>}$.

但$\theta_\alpha,\theta_\beta$相差一个旋转,
可定义$\varphi_{\alpha\beta}$,
使得$\theta_\beta=\theta_\alpha+\pi^\ast \varphi_{\alpha\beta}$.
在$\mod 2\pi$意义下,
$\varphi_{\alpha\beta}$满足cocycle条件以及可被唯一定义.

因此若采用de Rham上同调, 则$\{d\varphi_{\alpha\beta}\}$满足cocycle条件.
定义$\xi_\alpha=\frac{1}{2\pi} \sum_\gamma \rho_\gamma d\varphi_{\gamma\alpha}$,
则在$U_{\alpha\beta}$上,
$\frac{1}{2\pi}d\varphi_{\alpha\beta}=\xi_\beta-\xi_\alpha$.

从而, $d\xi_\alpha=d\xi_\beta$, 可以拼成整体定义$2$-形式$e$:
$e|_{U_\alpha}=d\xi_\alpha$. 显然$de=0$.
断言$[e]\in H^2(M)$与$\{\xi_\alpha\}$选取无关,
称之为平面丛$E$的**欧拉类**, 也记作$e(E)$.

选取无关是因为倘若有另一个$\tilde \xi_\alpha$满足要求,
那么$\tilde \xi_\alpha-\xi_\alpha$将满足相容性, 可以整体定义为$\eta$.
那么$d\eta=d\tilde\xi_\alpha-d\xi_\alpha$, 从而在上同调层面它们是相等的.

若给$E$一个定向平凡化, 假设约化到了$SO(2)=SU(1)$,
则$\varphi_{\alpha\beta}=-\frac{1}{i}\log g_{\alpha\beta}$, 进一步
$e|_{U_\alpha}=d\xi_\alpha=-\frac{1}{2\pi i}\sum_\gamma d(\rho_\gamma \cdot d\log g_{\gamma\alpha})$,
称为**平面丛欧拉类的显示表示公式**.

当$E$为乘积丛时, 转移函数为常值矩阵, 从而欧拉类为零.
它反映出了定向向量丛$E$的扭曲程度. 由表示公式, 可以证明欧拉类的函子性:

**命题 1.1**. *$f:N\rightarrow M$为光滑映射, $\pi:E\rightarrow M$为秩2定向向量丛, 则$e(f^{-1}E)=f^\ast e(E)\in H^2(N)$.* 

平面丛Thom类的显示表示
----------------------

$\frac{d\theta_\alpha}{2\pi}-\pi^\ast \xi_\alpha$定义了$E^0$上的$1$-形式$\psi$.
$\psi$限制在每条纤维上$E_x^0$上是$\frac{d\theta_\alpha}{2\pi}$,
为$E_x^0$的角形式; 同时$d\psi=-\pi^\ast e$在$E$上有定义, $\psi$是整体角形式.

于是, $E$的Thom类为$\Phi=d\rho(r)\wedge \psi-\rho(r)\pi^\ast e$.
若$s:M\rightarrow E$为零截面, 则$s^\ast \Phi=e$.
即零截面把Thom类拉回为欧拉类.

利用欧拉类的显式表示,
即得$\Phi=d\rho(r)\wedge \frac{d\theta_\alpha}{2\pi}+\frac{1}{2\pi i}d(\rho(r)\pi^\ast \sum_\gamma\rho_\gamma d\log g_{\gamma\alpha})$.
前一项形式非常直观, 而后一项是因为向量丛扭曲引起的修正项.

文章最后更新于 2021-10-12 10:25:18 
