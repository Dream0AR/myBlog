---
title: 《现代PDE基础》笔记(5)-Sobolev不等式
date: 2021-10-31 20:22:23
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

负指数Sobolev不等式
-------------------

前面证明了如下不等式:

**定理 1.1**. *当$\frac{n}{p}=\frac{n}{q}-m$时, 有* 

$$\parallel f\parallel_{L^p(\Omega)}\le C|f|_{\dot{H}^{m,q}(\Omega)},\quad \,\forall\,f\in C_c^\infty(\Omega).$$

注意不等式仅在$p\in(1,+\infty),$ $q\in [1,+\infty)$时成立.
当$p=+\infty$时, 仅在$q=n=m=1$时成立.
也就是前面的不等式只在$\frac{n}{q}-m>0$时成立.

在$\frac{n}{q}-m<0$时, 也有相应的Sobolev不等式.
首先需要引入Hölder模的概念.

若连续函数$f$满足$|f(x)-f(y)|\le H|x-y|^{\alpha},$ $\alpha\in(0,1),$
则称$f$是**Hölder连续**的. 当$\alpha$取$1$时即为**Lipschitz连续**.
记$\Omega$上全体Hölder连续函数为$C^\alpha(\Omega),$ 定义**Hölder模**:
$$\parallel u\parallel_{C^\alpha}=\parallel u\parallel_{L^{\infty} }+|u|_{\dot{C}^\alpha},$$
其中$|\cdot|_{\dot{C}^\alpha}$称为**齐次Hölder模**, 定义为:
$$|u|_{\dot{C}^\alpha(\Omega)}:=\sup_{x\neq y\in \Omega}\frac{|u(x)-u(y)|}{|x-y|^{\alpha} }.$$
齐次Hölder模有限时$u$即为Hölder连续的, 量纲关于$u$为$1,$ $x$为$-\alpha.$

**定理 1.2**. *当$-k-1<-\alpha-k=\frac{n}{q}-m<-k,$ $k\in \mathbb{N}$时, $\,\forall\,\beta\in \mathbb{N}^n,$ $|\beta|=k,$ 有* 

$$|\partial^\beta u|_{\dot{C}^\alpha(\mathbb{R}^n)}\le C|u|_{\dot{H}^{m,q}(\mathbb{R}^n)},\quad \,\forall\,f\in C_c^\infty(\mathbb{R}^n).$$

**证:** 只需讨论$k=0$的情形. 对一般的情形,
对$\partial^\beta u$应用$-\alpha=\frac{n}{q}-(m-k)$的不等式即可, 即
$$|\partial^\beta u|_{\dot{C}^\alpha}
        \le C|\partial^\beta u|_{\dot{H}^{m-k,q} }.
        \le C|u|_{\dot{H}^{m,q} }.$$

同前面的讨论, 不妨设$m=1,$ 那么只需证$\,\forall\,x\neq y\in \Omega,$ 有
$$|u(x)-u(y)|\le C|u|_{\dot{H}^{1,q} }|x-y|^{\alpha}.$$

记$|x-y|=\rho,$ 取$B(\rho)$为含$x,y,$ 边长为$\rho$的立方体, 那么
$$|u(x)-u(y)|\le \left|\frac{1}{\rho^n}\int_{B(\rho)}u(x)-u(z)dz\right|+\left|\frac{1}{\rho^n}\int_{B(\rho)}u(y)-u(z)dz\right|$$

由于
$$u(x)-u(z)=-\int_0^1\frac{d}{ds}u(x+s(z-x))ds=-\int_0^1\nabla u(x+s(z-x))\cdot (z-x)ds,$$

$$\begin{aligned}
            \left|\rho^{-n}\int_{B(\rho)}u(x)-u(z)dz\right|&\le\left|\rho^{1-n}\int_0^1\int_{B(\rho)}|\nabla u(x+s(z-x))|dzds\right|\\
            &\le \left|\rho^{1-\frac{n}{q} }\int_0^1\left(\int_{B(\rho)}|\nabla u(x+s(z-x))|^qdz\right)^{\frac{1}{q} }ds\right|\\
            &\le \rho^\alpha \parallel\nabla u\parallel_{L^q}\int_0^1 s^{-\frac{n}{q} }ds\le \frac{C}{2}|u|_{\dot{H}^{1,q} }|x-y|^{\alpha}
        \end{aligned}$$

因此$|u(x)-u(y)|\le C|u|_{\dot{H}^{1,q} }|x-y|^\alpha$成立, 定理得证.

其它情形的Sobolev不等式
-----------------------

若$\frac{n}{p}=\frac{n}{q}-m,$ $p=\infty$时一般没有相应的不等式,
但是将条件放宽, 我们有:

**命题 1.3**. *$\parallel u\parallel_{L^p(\Omega)}\le C_p\parallel u\parallel_{H^{1,n}(\Omega)},$ $\,\forall\,p\in(1,+\infty),$ $u\in C_c^\infty(\Omega)$* 

**证:** 当$\Omega$为有界区域时这是简单的, 因为取相应于$p$的$q,$ 有$q<n,$
从而$\parallel\nabla u\parallel_{L^q(\Omega)}\le C\parallel\nabla u\parallel_{L^n(\Omega)},$
$\parallel u\parallel_{L^p(\Omega)}\le C|u|_{\dot{H}^{1,q}(\Omega)}\le C|u|_{\dot{H}^{1,n}(\Omega)}.$
由此知将不等式右侧换为齐次模也对.

当$\Omega=\mathbb{R}^n$时, 由量纲分析知只能取Sobolev模.
这里我们只对$p>n+1$的情形给出证明. 取待定常数$(p_1,q_1),$
使得有Sobolev不等式$\parallel f\parallel_{L^{p_1} }\le C\parallel\nabla f\parallel_{L^{q_1} }$成立.
令$f=|u|^{\frac{n}{q_1} },$ 记$p=\frac{np_1}{q_1},$ 那么有:
$$\parallel u\parallel^{\frac{n}{q_1} }_{L^{p} }=\parallel u^{\frac{n}{q_1} }\parallel_{L^{p_1} }\le C\parallel|u|^{n-q_1}|\nabla u|^{q_1}\parallel_{L^1}^{\frac{1}{q_1} }\le C\parallel\nabla u\parallel_{L^n}\parallel u\parallel_{L^n}^{\frac{n}{q_1}-1}\le C\parallel u\parallel_{H^{1,n} }^{\frac{n}{q_1} }.$$
结合$\frac{n}{p_1}=\frac{n}{q_1}-1,$
我们即得到$\parallel u\parallel_{L^p(\mathbb{R}^n)}\le C_p\parallel u\parallel_{H^{1,n}(\mathbb{R}^n)},$
$\,\forall\,p=\frac{np_1}{q_1}=n+p_1>n+1.$

从另一个角度放宽条件, 令$p=+\infty,$ 我们有如下不等式:

**命题 1.4**. *$\parallel u\parallel_{L^\infty}\le C\parallel u\parallel_{H^{1,q}(\mathbb{R}^n)},$ $\,\forall\,q>n,$ $u\in C_c^\infty(\mathbb{R}^n).$* 

**证:** 即证$\,\forall\,x\in \mathbb{R}^n,$
$|u(x)| \le C\parallel u\parallel_{H^{1,q}(\mathbb{R}^n)}.$
在前面的定理证明过程中, 令$\rho=1,$
有$|u(x)-\int_{B(1)}u(z)dz|\le C|u|_{\dot{H}^{1,q} }.$ 因此:
$$|u(x)|\le C|u|_{\dot{H}^{1,q}(\mathbb{R}^n)}+\parallel u\parallel_{L^q(B(1))}\le C\parallel u\parallel_{H^{1,q}(\mathbb{R}^n)}.$$

由这一结果, 结合先前的不等式, 可以看出对$0<\alpha=1-\frac{n}{q}<1$,
有$\parallel u\parallel_{C^\alpha}\le C\parallel u\parallel_{H^{1,q} },$
将齐次模的结果换为一般模.

对$\Omega$为有界区域的情形, 若只关心其上一般模,
前面的不等式可以仅在$\mathbb{R}^n$上讨论,
而后用等价模定理将结果搬到$\Omega$上即可. 如:
$$\parallel u\parallel_{L^p(\Omega)}\le \parallel\widetilde{u}\parallel_{L^p(\mathbb{R}^n)}\le C\parallel\widetilde{u}\parallel_{H^{m,q}(\mathbb{R}^n)}, \quad \,\forall\,u\in C_c^\infty(\Omega).$$
其中$\widetilde{u}$为$u$的延拓. 因此
$$\parallel u\parallel_{L^p(\Omega)}\le C\inf_{\widetilde u|_{\Omega}=u}\parallel\widetilde{u}\parallel_{H^{m,q}(\mathbb{R}^n)}\,\approx\, \parallel u\parallel_{H^{m,q}(\Omega)}.$$

类似地对Hölder模也有同样的结果. 注意并没有齐次模形式的等价性定理,
因此不能用上述方法搬运齐次模的结果.

文章最后更新于 2021-10-31 20:22:25 
