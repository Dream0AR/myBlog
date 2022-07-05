---
title: 《现代PDE基础》笔记(3)-Fourier变换
date: 2021-10-18 15:14:30
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

常义Fourier变换
---------------

### 基本性质

$\,\forall\,f\in \mathscr{S}(\mathbb{R}_x^n),$ 定义其**Fourier变换**为
$$F[f]=\int_{\mathbb{R}_x^n}f(x)e^{-ix\cdot \xi} dx;$$
对$g(\xi)\in\mathscr{S}(\mathbb{R}_\xi^n),$ 定义其**Fourier逆变换**为
$$F^{-1}g=\int_{\mathbb{R}_\xi^n}g(\xi)e^{ix\cdot \xi}\bar{d}\xi.$$
其中$\bar{d}\xi=(2\pi)^{-n}d\xi.$ 也记$F[f]=\widehat{f}.$

$F$满足如下性质:

1.  $F[f(x+h)]=\widehat{f}(\xi)e^{ih\cdot\xi};$

2.  $F[f(x)e^{-ix\cdot h}]=\widehat{f}(\xi+h);$

3.  $F[f(\delta x)]=\delta^{-n}\widehat{f}(\delta^{-1}\xi);$

4.  $F[D_jf(x)]=\xi_j\widehat{f}(\xi);$

5.  $F[x_jf(x)]=-D_j\widehat{f}(\xi).$

其中$D_j=\frac{1}{i}\partial x_j.$ 前三个命题是容易的,
第四个命题即是分部积分, 最后一个命题难点在于说明$\widehat{f}$是可微的.
对$\widehat{f}$做微商, 注意左式已经给出了我们期望的极限,
因此证明它们的差趋于零即可. 用欧拉公式与微分中值定理即可给出简单的证明.
这一性质告诉我们, $\widehat{f}\in C^\infty(\mathbb{R}_\xi^n).$ 进一步有:

**定理 1.1**. *$f\in \mathscr{S}(\mathbb{R}^n)$ $\Rightarrow$ $\widehat f\in \mathscr{S}(\mathbb{R}^n).$* 

**证:** 注意到$\widehat{f}=F[f]$是有界的. 那么由前面的性质,
$(-1)^{|\beta|}\xi^\alpha D^\beta\widehat{f}(\xi)=F[D^\beta(x^\alpha f(x))]$也是有界的.
因此$\widehat f\in \mathscr{S}(\mathbb{R}^n).$

接下来我们说明$F^{-1}$确实是$F$的逆. 首先由Fubini定理, 有如下命题:

**命题 1.2**. *$f,g\in \mathscr{S}(\mathbb{R}^n)$时, 有 $$\int_{\mathbb{R}^n}f\widehat gdx=\int_{\mathbb{R}^n}\widehat fgdx.$$* 

回忆概率论中均值为零,
标准差为$\sigma I$的正态分布密度函数为$K_\sigma(x)={(\sqrt{2\pi}\sigma)^{-n} }e^{-\frac{|x|^2}{2\sigma^2} }.$
记$G_\sigma(x)=(2\pi)^{-n}e^{-\frac{\sigma^2 |x|^2}{2} },$
那么计算有$F[G_\sigma]=K_\sigma.$ 我们利用这一点证明下面的定理:

**定理 1.3** (Fourier逆变换). *$f\in \mathscr{S}(\mathbb{R}^n),$ $f=F^{-1}\circ F[f].$* 

**证:** 由前面的命题,
$\int_{\mathbb{R}^n}f K_\sigma dx=\int_{\mathbb{R}^n}\widehat{f} G_\sigma d\xi.$
当$\sigma\rightarrow 0$时,
左侧收敛到$f(0)$(即$K_\sigma\rightarrow \delta$),
右侧收敛到$\int_{\mathbb{R}^n} \widehat{f}\bar{d}\xi$(即$G_\sigma\rightarrow (2\pi)^{-n}$).
因此有$f(0)=\int_{\mathbb{R}^n} \widehat{f}\bar{d}\xi=F^{-1}\widehat{f}(0).$

接下来$\,\forall\,x\in \mathbb{R},$ 取函数$g(y)=f(y+x),$ 那么
$$f(x)=g(0)=\int_{\mathbb{R}^n}\widehat{g}(\xi)\bar{d}\xi=\int_{\mathbb{R}^n}\widehat{f}(\xi)e^{ix\cdot \xi}\bar{d}\xi=F^{-1}\widehat{f}(x).$$
因此$f=F^{-1}\circ F[f].$

根据定义, $F[f] (\xi)=(2\pi)^nF^{-1}[f] (-\xi),$
$F^{\pm 1}[f(x)] (\xi)=F^{\pm 1}[f(-x)] (-\xi),$ 因此
$$F[F^{-1}[f] (\xi)] (x)=(2\pi)^{-n}F[F[f] (-\xi)] (x)=F^{-1}[F[f] (-\xi)] (-x)=F^{-1}[F[f] (\xi)] (x)=f(x),$$
即在$\mathscr{S}(\mathbb{R}^n)$上,
$F^{-1}\circ F=F^{-1}\circ F=\mathrm{id},$
故线性连续映照$F$建立了一个同构对应, 逆映射也是连续的.

### 卷积

卷积运算在Fourier变换下也有很好的性质.

**命题 1.4**. *$\,\forall\,f,g\in \mathscr{S}(\mathbb{R}^n),$ $f\ast g\in \mathscr{S}(\mathbb{R}^n),$ 且$F[f\ast g]=F[f]F[g].$* 

**证:** $\,\forall\,l\ge 0,$
$\,\exists\,M_l>0$使得$\sup_x |x|^l|g(x)|\le M_l.$ 因此有:
$$|x||g(x-y)|^{1/l}\le M_l^{1/l}\frac{|x|}{|x-y|}\le 2M_l^{1/l},\quad |x|\ge 2|y|;$$
$$\frac{|x|}{|y|}|g(x-y)|^{1/l}\le 2|g(x-y)|\le 2M_0^{1/l},\quad |x|<2|y|.$$

记$A_l=2^l(M_0+M_l),$ 那么$|x|^l|g(x-y)|\le A_l(1+|y|)^l.$ 从而
$$\sup_x|x|^l|(f\ast g)(x)|\le A_l\int_{\mathbb{R}^n}f(y)(1+|y|)^ldy<\infty.$$

$\,\forall\,\alpha\in \mathbb{N}^n,$
由于$\partial^\alpha(f\ast g)=f\ast (\partial^\alpha g),$
$\partial^\alpha g\in \mathscr{S}(\mathbb{R}^n),$
因此$\sup_x |x|^l |\partial^\alpha (f\ast g)(x)|<\infty,$
$f\ast g\in \mathscr{S}(\mathbb{R}^n).$

记$F(x,y)=f(y)g(x-y)e^{-ix\cdot \xi}.$ $|F|$显然是可积的,
因此由Fubini定理,
$$\widehat{f\ast g}(\xi)=\int_{\mathbb{R}^n\times \mathbb{R}^n}F(x,y)dydx=\int_{\mathbb{R}^n\times \mathbb{R}^n}F(x,y)d(x-y)dy=\widehat{f}(\xi)\widehat{g}(\xi).$$
即$F[f\ast g]=F[f]F[g].$

利用$F$与$F^{-1}$的转化关系, 立即可得:

**推论 1.5**. *$F[fg]=(2\pi)^{-n}F[f]\ast F[g]$* 

对Fourier级数的Parseval恒等式, 我们有类似的Fourier变换版本:

**定理 1.6** (Plancherel). *$f\in \mathscr{S}(\mathbb{R}^n)\Rightarrow (2\pi)^{-n}\parallel\widehat{f}\parallel_{L^2(\mathbb{R}^n)}=\parallel f\parallel_{L^2(\mathbb{R}^n)}$* 

**证:** 取$f^\ast (x)=\overline{f(-x)},$ 那么
$$Ff^\ast (\xi)=\int_{\mathbb{R}^n}\overline{f(-x)}e^{-ix\cdot \xi}dx=\overline{\int_{\mathbb{R}^n}f(-x)e^{ix\cdot \xi}dx}=\overline{\widehat{f}(\xi)}.$$

取$h=f\ast f^\ast ,$
那么一方面$h(0)=\int_{\mathbb{R}^n}f(y)\overline{f(y)}dy=\parallel f\parallel^2_{L^2(\mathbb{R}^n)}.$
另一方面,
由$\widehat{h}=\widehat{f}\overline{\widehat{f} }=|\widehat{f}|^2,$
$h(0)=\int_{\mathbb{R}^n}\widehat{h}(\xi)\bar{d}\xi=(2\pi)^{-n}\parallel\widehat{f}\parallel^2_{L^2(\mathbb{R}^n)}.$
由此即得$(2\pi)^{-n}\parallel\widehat{f}\parallel_{L^2(\mathbb{R}^n)}=\parallel f\parallel_{L^2(\mathbb{R}^n)}.$

当然可以先证明更一般地有$\int_{\mathbb{R}^n}\widehat{f}\overline{\widehat{g} }\bar{d}\xi=\int_{\mathbb{R}^n}f\overline{g}d x,$
取$h=f\ast g^\ast $即可.

广义Fourier变换
---------------

### 基本定义

我们可以在$\mathscr{S}'(\mathbb{R}^n)$上定义广义Fourier变换$F[T]\in \mathscr{S}'(\mathbb{R}^n):$
$$\left<{}F[T],\varphi\right>:=\left<{}T,F[\varphi]\right>$$

当$T\in \mathscr{S}(\mathbb{R}^n)$或仅为存在Fourier变换的常义可积函数时,
由前面的命题(用Fubini定理证明), 等式在常义Fourier变换意义下成立,
因此定义是常义的推广.

类似地, 广义Fourier变换也满足如下性质: $F[D^\alpha T]=\xi^\alpha F[T],$
$F[x^\alpha T]=(-1)^{|\alpha|}D^\alpha F[T].$

定义广义Fourier逆变换为:
$$\left<{}F^{-1}[T],\varphi\right>:=\left<{}T,F^{-1}[\varphi]\right>.$$

由常义Fourier变换$F:\mathscr{S}(\mathbb{R}^n)\cong \mathscr{S}(\mathbb{R}^n),$
广义Fourier变换也是广义函数空间$\mathscr{S}'(\mathbb{R}^n)$上的连续同构对应,
逆映射$F^{-1}$也是线性连续映照.

回忆我们定义了广义函数的卷积, 但对一般的广义函数, 卷积不见得存在.
对$\varphi\in \mathscr{S}(\mathbb{R}^n),$
$T\in \mathscr{S}'(\mathbb{R}^n),$
我们有$\varphi\ast T\in \mathscr{S}'(\mathbb{R}^n),$
且$F[\varphi\ast T]=F[\varphi]F[T].$
$\varphi$也可替换为具紧支集广义函数$\mathscr{E}'(\mathbb{R}^n).$

由于对广义函数, $F,F^{-1}$也有如下的转化关系:
$$\left<{}F[T],\varphi(x)\right>=(2\pi)^n\left<{}T,F^{-1}[\varphi(-x)]\right>=(2\pi)^n\left<{}F^{-1}[T],\varphi(-x)\right>,$$
我们有$F[\varphi\cdot T]=(2\pi)^{-n}F[\varphi]\ast F[T].$

### 例子

$F[\delta(x-a)]=e^{-ia\cdot \xi},$ 特别地, $F[\delta]=1.$

具紧支集的广义函数当然在$\mathscr{S}'(\mathbb{R}^n)$中. 特别地,
其满足如下定理:

**定理 1.7**. *若$T\in \mathscr{E}'(\mathbb{R}_x^n),$ 则$F[T] (\xi)=\left<{}T_x,e^{-ix\cdot \xi}\right>\in \mathscr{S}'(\mathbb{R}_\xi^n)$为关于$\xi$的常义函数.* 

证明用广义函数的正则化即可给出.

文章最后更新于 2021-10-23 13:03:45 
