---
title: 《几何分析》笔记(2)-Hausdorff维数的分析应用
date: 2022-09-17 22:53:03
categories: 
- 笔记
- 几何
- 几何分析
mathjax: true
---

## 准备工作

对完备流形$(M,g),$ 紧集$E,$ $\dim_\mathcal{H}E=p.$
那么$\,\forall\,p'>p,$ $\,\forall\,\varepsilon,\delta>0,$
$\,\exists\,(x_i,r_i<\delta),$
有限并$\bigcup \overline{B}_{r_i}(x_i)\supset E,$
使得$\sum \omega(p')r_i^{p'}<\varepsilon.$
令$\eta\in C^\infty(\mathbb{R}),$ 使得 
$$
\eta=
 \left\{\begin{aligned}
 &1,&&t<1\\
 &\in[0,1],&&t\in [1,2]\\
 &0,&&t>2.
 \end{aligned}\right.
$$
 我们给出接下来的定义与性质:


$$
\eta_i(x)=\eta\left(\frac{d(x,x_i)}{r_i}\right)\in \mathscr{D}(M),\quad \eta_i|_{B^g_{r_i}(x_i)}=1,\quad \eta_i|_{B^g_{2r_i}(x_i)^c}=0.
$$


计算发现它的梯度满足如下性质:


$$
|\nabla_g\eta_i|=|\eta'|\left|\frac{\nabla_g d(x,x_i)}{r_i}\right|<\frac{C}{r_i}.
$$




$$
\int_M |\nabla_g\eta_i|^{n-p'}dV_g\le \frac{C}{r_i^{n-p'} }\mathrm{vol}(B_{2r_i}^g(x_i))\le Cr_i^{p'}.
$$



接下来, 定义 

$$
\phi=\max\{\eta_i\}\in C^p(M)\cap W^{1,n-p'}(M),
$$


那么由先前的条件与结论, 

$$
\int_M|\nabla \phi|^{n-p'}\le C\varepsilon,
$$




$$
\,\exists\,U\subset B_{2r_i}^g(E), \quad \phi|_U\equiv 1,\quad \phi|_{\left(B_{2r_i}^g(E)\right)^c}=0.
$$



简单起见, 定义$r=d(\partial U,E),$ 那么$\phi|_{B_r^g(E)}\equiv 1.$
因此随着$\varepsilon,\delta$改变,
我们可以说明$\,\exists\,\phi_k,\delta_k,r_k,$ 使得:

1. $r_k<\delta_k\rightarrow 0,$

2. $\operatorname{supp}\phi_k\subset B_{\delta_k}^g(E),$
 $\phi|_{B_{r_k}^g(E)}=1,$

3. $\phi_k\in C^0(M)\cap W^{1,n-p'}(M),$
 $\int_M|\nabla_g\phi_k|^{n-p'}dV_g\rightarrow 0.$
 由逼近可设$\phi_k\in \mathscr{D}(M).$

## 应用

设$\Omega$为$M$中的有界区域, $\partial\Omega=\Gamma_1\cup \Gamma_2,$
其中$\Gamma_1$维数小于$n-1$且为紧集, $\Gamma_2$是$n-1$维的,
且$\mathcal{H}^{n-1}(\Gamma_2)<+\infty.$
我们来证明对于$M$上光滑向量场$X,$


$$
\int_\Omega \operatorname{div}X=\int_{\Gamma_2} X\cdot n.
$$



任取$p'\in (p,n-1),$ 令$E=\Gamma_1,$ $\,\exists\,\phi_k$如前所述,
通过将坏点挖去, 我们有:


$$
\int_M\operatorname{div}(1-\phi_k)X=\int_{\Gamma_2}(1-\phi_k)X\cdot n.
$$


而由$\phi_k$性质与Hausdorff维数性质, 我们知道,


$$
\int_\Omega \nabla \phi_k \cdot X\rightarrow 0,\quad \int_\Omega \phi_k \operatorname{div}X\rightarrow 0,\quad \int_\Omega \phi_kX\cdot n\rightarrow 0.
$$


这就得到了前面的结论.

文章最后更新于 2022-09-17 22:53:07 
