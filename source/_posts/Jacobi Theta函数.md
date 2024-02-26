---
title: Jacobi Theta函数
date: 2023-09-05 15:44:11
categories: 
- 笔记
- 科研
- 格点
mathjax: true
---

## 格点上的Poisson求和

对充分好的函数, 我们有Fourier变换


$$
\widehat f(x)=\int_{-\infty}^{\infty} f(y)e^{-2\pi ixy}dy.
$$



**命题 1** (Parseval恒等式). *$\sum_{n=-\infty}^{\infty} f(n)=\sum_{n=-\infty}^{\infty}\widehat f(n).$* 

考虑周期函数 

$$
F(x)=\sum_{n=-\infty}^{\infty} f(x+n).
$$


$F$可以视作$\mathbb{R}/\mathbb{Z}$上的函数, 有Fourier展开


$$
F(x)=\sum_{m=-\infty}^{\infty} a_m e^{2\pi imx},
$$




$$
a_m=\int_0^1 F(x) e^{-2\pi imx}dx=\int_0^1 \sum_{n=-\infty}^{\infty} f(x+n)e^{-2\pi im(x+n)}dx=\int_{-\infty}^\infty f(x)e^{-2\pi imx}dx=\widehat f(m).
$$


从而


$$
\sum_{n=-\infty}^{\infty}f(n)=F(0)=\sum_{m=-\infty}^{\infty}a_m=\sum_{n=-\infty}^\infty \widehat f(n).
$$


命题得证.

一般的, 对于任意$n$维实向量空间, 配备平移不变测度$\mu,$ 有Fourier变换


$$
\widehat f(x)=\int_V e^{-2\pi i\left<{}y,x\right>}f(y)\mu(y).
$$


此时$\widehat f$是在$V^\ast $上充分好的函数.

称$\Gamma$为$V$中的格点,
若$\Gamma$以$V$中一组线性无关向量$\{v_1,\cdots,v_n\}$为$\mathbb{Z}$-基.
$V^\ast $中的对偶格点$\Gamma'$定义为


$$
\Gamma':=\{x\in V^\ast \mid \left<{}y,x\right>\in \mathbb{Z}, \,\forall\,y\in \Gamma\}.
$$


此时记$A=[v_1,\cdots,v_n],$
那么$(A^{\ast })^{-1}$的列向量就是$\Gamma'$的一组$\mathbb{Z}$-基,
其中${}^\ast $为对偶阵. 当$V=\mathbb{R}^n,$
$\left<{}-,-\right>$取标准内积时, ${}^\ast $即为转置.

**命题 2** (格点上的Poisson求和). *格点$\Gamma$在$V$中的体积记为$\mu(V/\Gamma).$ 若函数$f$有Fourier变换, 我们有* 



$$
\sum_{y\in\Gamma} f(y)=\frac{1}{\mu(V/\Gamma)}\sum_{x\in \Gamma'}\widehat f(x).
$$



做尺度变换, 等式两侧保持(Fourier变换中有测度项),
因此总可设$\mu(V/\Gamma)=1.$ 记$\Gamma$的基拼为矩阵$A,$ 那么


$$
\sum_{y\in \Gamma}f(y)=\sum_{y\in \mathbb{Z}^n}f(Ay)=\sum_{y\in\mathbb{Z}^n}\widetilde f(y),\quad \widetilde f(y)=:f(Ay).
$$




$$
\widehat f(x)=\int_V e^{-2\pi i\left<{}y,x\right>}f(y)\mu(y)=\int_V e^{-2\pi i\left<{}Ay,x\right>}\widetilde f(y)\mu(y)=\int_V e^{-2\pi i\left<{}y,A^\ast x\right>}\widetilde f(y)\mu(y)=\mathcal{F}[\widetilde f] (A^\ast x).
$$




$$
\sum_{x\in\Gamma'}\widehat f(x)=\sum_{x\in\mathbb{Z}^n}\widehat f((A^{\ast })^{-1}x)=\sum_{x\in \mathbb{Z}^n}\mathcal{F}[\widetilde f] (x)=\sum_{y\in\mathbb{Z}^n}\widetilde f(y)=\sum_{y\in\Gamma}f(y).
$$


其中利用到了格点$\mathbb{Z}^n\subset \mathbb{R}^n$上的标准Poisson求和,
证明和前一命题证明类似.

## Theta函数

设$V$上有一个对称正定非退化二次型$B(x,y)=x\cdot y$ (与测度相容),
那么此时$V$可以和$V^\ast $等同起来, $\Gamma'$也是$V$中的格点.
对任意格点$\Gamma,$ 定义


$$
\Theta_\Gamma(t)=\sum_{x\in \Gamma} e^{-\pi tx\cdot x},\quad t>0,\quad t\in \mathbb{R}.
$$



**定理 3**. *$\Theta_\Gamma(t)=t^{-\frac{n}{2} }\frac{1}{\mu(V/\Gamma)}\Theta_{\Gamma'}(t^{-1}).$ 特别地, 若$\Gamma=\Gamma'=\mathbb{Z}\subset \mathbb{R},$ 那么$\Theta(t)=\frac{1}{\sqrt{t} }\Theta(\frac{1}{t}).$* 

对函数$f(x)=e^{-\pi x\cdot x}$使用Poisson求和, 那么


$$
\Theta_\Gamma(t)=\sum_{x\in \sqrt{t}\Gamma} f(x)=\frac{1}{\mu(V/\sqrt{t}\Gamma)}\sum_{x\in(\sqrt{t}\Gamma)'}\widehat f(x)=t^{-\frac{n}{2} }\frac{1}{\mu(V/\Gamma)} \sum_{x\in\Gamma'}\widehat f\left(\frac{1}{\sqrt{t} }x\right)=t^{-\frac{n}{2} }\frac{1}{\mu(V/\Gamma)}\Theta_{\Gamma'}(t^{-1}).
$$


最后的等式是由于$f=\widehat f,$


$$
\Theta_{\Gamma'(t^{-1})}=\sum_{x\in\Gamma'} e^{-\pi \frac{1}{t}x\cdot x}=\sum_{x\in\Gamma'}\widehat f\left(\frac{1}{\sqrt{t} }x\right).
$$



记二次型的gram矩阵为$A=(a_{ij}),$ $a_{ij}=e_i\cdot e_j,$
其中$\{e_i\}$为$\Gamma$的基底. 那么$\Gamma$的体积为$\sqrt{\det(A)}.$
若$B$为$A$的逆阵, 那么$B=(b_{ij})$是对偶基对应的gram阵,
$\Gamma'$由对偶基$e_i'=b_{ij}e_j$拼成.
$\Gamma'$的体积为$\det(A)^{-\frac{1}{2} }.$

记$r_\Gamma(m)$为使得$x\cdot x=2m$的$x\in\Gamma$的个数, $m\ge 0$.
$r_\Gamma(m)$由关于$m$的多项式控制, Serre给出了$O(m^\frac{n}{2})$的界.
于是级数$\sum_{m=0}^\infty r_\Gamma(m)q^m$在$|q|<1$时收敛.
取$q=e^{2\pi iz},$ 那么对于$z\in\mathbb{H},$ 我们定义了全纯函数


$$
\theta_\Gamma(z)=\sum_{m=0}^\infty r_\Gamma(m)q^m=\sum_{x\in\Gamma} e^{\pi iz(x\cdot x)}=\sum_{x\in\Gamma} q^{(x\cdot x)/2}.
$$


这里我们需要要求$x\cdot x\equiv 0\mod 2,$ $\,\forall\,x\in \Gamma.$
这即是要求$A=(e_i\cdot e_j)$对角线上均为偶数.

之前的Theta函数是实参数$t,$ 此时的小theta函数满足


$$
\Theta_\Gamma(t)=\theta_\Gamma(it),\quad \Theta_\Gamma\left(\frac{1}{t}\right)=\theta_\Gamma\left(\frac{i}{t}\right)=\theta_\Gamma\left(-\frac{1}{it}\right).
$$



进一步假设$\Gamma$是自对偶的, 即$\Gamma'=\Gamma.$
这要求$A=(e_i\cdot e_j)$是整系数的, 且行列式为$1.$ 在这样的假设下,
由前面的Poisson和公式, 有


$$
\theta_\Gamma\left(-\frac{1}{it}\right)=t^{\frac{n}{2} }\theta_\Gamma(it).
$$


由于$\theta_\Gamma(-\frac{1}{z}),$
$(-iz)^{\frac{n}{2} }\theta_\Gamma(z)$都是解析函数,
现证明了它们在纯虚轴(正半轴)上相等, 由解析连续性,
它们在上半平面上都相等.

**命题 4**. *对满足上述条件的格点$\Gamma,$ $\theta_\Gamma\left(-\frac{1}{z}\right)=(-iz)^{\frac{n}{2} }\theta_\Gamma(z),$ $\,\forall\,z\in\mathbb{H}.$* 

事实上, 可以证明满足自对偶且$x\cdot x\equiv 0\mod 2,$
$\,\forall\,x\in \Gamma$的格点$\Gamma\subset V$必须是$8k$维的,
$k\in\mathbb{Z}_+.$

文章最后更新于 2023-09-05 15:45:49 
