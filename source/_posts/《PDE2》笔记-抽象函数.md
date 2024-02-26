---
title: 《PDE2》笔记-抽象函数
date: 2022-12-02 16:40:41
categories: 
- 笔记
- PDE
- PDE2
mathjax: true
---

为了研究发展方程, 我们需要引入新的概念. 以热方程为例.
设$\Omega\subset \mathbb{R}^n,$ 记$\Omega_T=\Omega\times (0,T].$


$$
u\in L^p(\Omega_T)\Leftrightarrow \int_0^T\left(\int_\Omega |u(x,t)|^pdx\right)dt<+\infty \Leftrightarrow \int_0^T\Vert u_t\Vert_{L^p}^pdt<\infty.
$$


由此启发, 设$I\subset \mathbb{R},$ $X$为Banach空间.
若$u(\cdot,t)\mapsto X$为Banach可测函数(即可由"简单函数"="基"逼近), 且


$$
\int_I\Vert u(\cdot,t)\Vert^p_Xdt<+\infty,
$$

 则称$u\in L^p(I;X).$
记$\Vert u\Vert_{L^p(I;X)}=\left(\int_I\Vert u\Vert^p_Xdt\right)^{\frac{1}{p} }.$
定义

$$
C(I;X)=\{u(\cdot,t):I\rightarrow X\text{ 关于$X$模连续},\sup_{t\in I}\Vert u_t\Vert_{X}<+\infty\}.
$$

记$\Vert u\Vert_{C(I;X)}:=\sup_{t\in I}\Vert u_t\Vert_{X}.$ 若$I$为区间,
可将上述记号简记为$L^p(a,b;X)$等. 但连续情形不能忽略开闭性. 容易验证

$$
L^p(\Omega_T)=L^p(0,T;L^p(\Omega)),\quad C(\overline\Omega_T)=C([0,T],C(\overline\Omega))\quad \text{若$\Omega$有界}.
$$


类似地, 可以定义Sobolev空间. 若


$$
u,v\in L_{loc}(I;X),\quad \int_I u\eta_tdt=-\int_I v\eta dt,\quad \,\forall\,\eta\in C_0^\infty(I),
$$


则记$v=u_t,$ 为弱导数. 这样我们定义:


$$
W^{1,p}(I;X):=\{u\in L^p, u_t\in L^p\},
$$




$$
\Vert u\Vert_{W^{1,p} }=(\Vert u\Vert_{L^p}^p+\Vert u_t\Vert_{L^p}^p)^{\frac{1}{p} }.
$$


对$p\in [1,+\infty],$ $I=[a,b],$ 我们有嵌入定理:

**定理 1**. *$W^{1,p}(I;X)\hookrightarrow C(I;X).$* 

简单来说, 我们有$u(t)=u(s)+\int_s^tu_tdt,$
因此$|u(t)-u(s)|\le \int_t^s\Vert u_t\Vert dt.$

**定理 2** (Lions). *$\Omega\subset \mathbb{R}^n$为开集. 若$u\in L^2(0,T;H_0^1(\Omega)),$ $u_t\in L^2(0,T;H^{-1}(\Omega)),$ 则$u\in C([0,T];L^2(\Omega)),$ 且$\Vert u(\cdot,t)\Vert_{L^2(\Omega)}^2$还是绝对连续的.* 



$$
\frac{d {} }{d {}t}\Vert u(\cdot,t)\Vert_{L^2}^2=2\left<{}u_t,u\right>,\quad a.e.\:t\in [0,T].
$$



**定理 3**. *$\Omega\subset \mathbb{R}^n$为有界开集, $\partial\Omega\in C^m,$ 若$u\in L^2(0,T;H^{m+2}(\Omega)),$ $u_t\in L^2(0,T;H^{m}(\Omega)),$ 则$u\in C([0,T];H^{m+1}(\Omega)).$* 

文章最后更新于 2022-12-02 16:40:42 
