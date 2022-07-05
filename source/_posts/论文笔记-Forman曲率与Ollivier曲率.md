---
title: 论文笔记-Forman曲率与Ollivier曲率
date: 2021-10-23 10:50:16
categories: 
- 笔记
- 科研
- 图上曲率
mathjax: true
---

Characterizations of Forman curvature - Jürgen Jost, Florentin Münch

基本定义
--------

### 胞腔复形与图

给定胞腔复形$X=\bigcup X_k.$
取$\delta:X_k\rightarrow X_{k+1}$为关联(incident)算子,
$\delta v(z)=\pm 1$或$0.$ 要求胞腔复形满足如下性质:

-   $\dim(z)\ge 1\Rightarrow \,\exists\,x\prec z;$

-   $|\{w\in X_0:\delta w(x)=1\}|=|\{w\in X_0:\delta w(x)=-1\}|=1,$
    $\,\forall\,x\in X_1;$ (每边两顶点)

-   $\dim(z)-\dim(v)=2,$ $\{x:v\prec x\prec z\}\neq \varnothing$

    $\Rightarrow$ $|\{x:v\prec x\prec z\}|=2$ 且
    $\pm 1\in \{\delta v(x)\delta x(z):x\in X\}.$ (diamond性&
    $\delta^2=0$)

-   (定向)连通性;

-   $\{x:x\prec z\}=\{x:x\prec z'\},$ $\dim z\ge 1\Rightarrow z=z'.$
    (简单图)

$\,\forall\,x,y\in X,$
记$x\sim y$若$\,\exists\,v\prec x,y$或$x,y\prec z.$ 这诱导了距离:
$$d(x,y)=\inf\{n:x=x_0\sim\cdots\sim x_n=y\}.$$
注意在$X_0$上这并不是一般的路径距离. 在复形维数较高时,
点到点可以凭借高维胞腔更快速地转移.

定义带权内积 $$\left<{}f,g\right>=\sum_x f(x)g(x)m(x).$$

将$x$视为$1_x,$ 线性扩张$\delta:C(X)\rightarrow C(X).$
定义伴随$\delta^\ast :C(X)\rightarrow C(X),$
$$\delta^\ast  z(x)=\frac{1}{m(x)}\left<{}\delta^\ast  z,x\right>=\frac{1}{m(x)}\left<{}\delta x,z\right>=\frac{m(z)}{m(x)}\delta x(z).$$

这与Forman定义中的$\partial$有区别,
$$\partial z(x)=\delta x(z)=\frac{m(x)}{m(z)}\delta^\ast  z(x).$$

### Hodge Laplacian

定义Hodge Laplacian $$H=\delta \delta^\ast +\delta^\ast \delta.$$

计算$Hy(x),$ 分别计算如下式子:
$$\delta\delta^\ast  y(x)=\frac{1}{m(x)}\left<{}\delta^\ast y,\delta^\ast  x\right>=\frac{1}{m(x)}\sum_{v\prec x,y}m(v)\frac{m(y)}{m(v)}\delta v(y)\frac{m(x)}{m(v)}\delta v(x)=\sum_{v\prec x,y}\frac{m(y)}{m(v)}\delta v(x)\delta v(y),$$
更简单的有:
$$\delta^\ast \delta y(x)=\sum_{x,y\prec z}\frac{m(z)}{m(x)}\delta x(z)\delta y(z).$$

**注意与Forman定义不同, 维数较小的胞腔权重总是在分母上.**

当$X=X_0\cup X_1$为赋权定向图时, 记$m(x)=m(v,w)=m(w,v),$ $x\in X_1,$
$v,w$为两顶点. $H$作用在$C(X_0)$上为:

$$\begin{aligned}
            Hf(v)=\delta^*\delta f(v)&=\sum_w\sum_{v,w\prec x}\frac{m(x)}{m(v)}\delta v(x)\delta w(x)f(w)\\
            &=\sum_{v\prec x}\frac{m(x)}{m(v)}\sum_{w\prec x}\delta v(x)\delta w(x)f(w)\\
            &=\sum_{w\neq v}\frac{m(v,w)}{m(v)}(f(v)-f(w))          
        \end{aligned}$$

即$H_0$就是带权图的Laplacian.

### Forman曲率

对$x\neq y\in X_1,$ 第一个和中至多有一项非零,
第二个和中非零项符号均一致. 当两个和中均出现非零项时,
有$\delta v(x)\delta v(y)=-\delta x(z)\delta y(z).$ 因此
$$|Hy(x)|=\left|\sum_{v\prec x,y}\frac{m(y)}{m(v)}-\sum_{x,y\prec z}\frac{m(z)}{m(x)}\right|.$$
容易得到
$$Hx(x)=\sum_{v\prec x}\frac{m(x)}{m(v)}+\sum_{x\prec z}\frac{m(z)}{m(x)}.$$

对(任意)自伴算子$H,$ 有分解 $$H=\Delta+D,$$ $\Delta$为极小对角占优算子,
$D$为对角阵. 显然有 $$Dx(x)=Hx(x)-\sum_{y\neq x}|Hy(x)|.$$

对Hodge Laplacian做分解, 将得到的$D$称为**Forman曲率**. 对$x\in X_1,$
$$F(x)=\sum_{v\prec x}\frac{m(x)}{m(v)}+\sum_{x\prec z}\frac{m(z)}{m(x)}-\sum_{x\neq y}\left|\sum_{v\prec x,y}\frac{m(y)}{m(v)}-\sum_{x,y\prec z}\frac{m(z)}{m(x)}\right|.$$

若$m\equiv 1,$
$$F(x)=\#\{v\in X_0:v\prec x\}+\#\{z\in X_2:x\prec z\}-\#\{\text{parallel neighbors of } x\},$$
与Forman曲率确实是一样的.

但事实上得到$F$的过程与Forman曲率并不完全一致, 对一般的$m$二者并不相同.
Forman在分解Hodge Laplacian前, 先对$H$做了对称化, 即在常权重下是对称阵.

不过根据步骤的不同, 可以转化两种不同的Forman曲率.

对偶关系
--------

### Forman曲率的对偶表示

对复形$K=(X,\delta,m),$ $K'=(X',\delta,m'),$ 记$K'\le_k K,$
若满足如下条件:

1.  $X_j=X_j',$ $\,\forall\,j\le k;$

2.  $X_j'\subset X_j,$ $\,\forall\,j>k;$

3.  $m(x)=m'(x),$ $\,\forall\,\dim x\le k;$

4.  $\delta'v(x)=\delta v(x),$ $\,\forall\,x,v\in X'.$

也就是$K'\subset K$且它们的带权定向$k$-骨架相同.

**定理 1.1**. *$K=(X,\delta,m),$ $x\in X_k,$ $k\in \mathbb{N}.$ 那么有* 

$$\max_{K'\le_k K}F'(x)=\min_{
                \begin{subarray}{c}
                    h(x)=1\\
                    |h|\le 1\\
                    \delta h\cdot \delta x\le 0
            \end{subarray} }\delta\delta^*h(x)$$

### Ollivier曲率

对$x\in X_1,$ 其Ollivier曲率可写为

$$\kappa(x)=\inf_{\begin{subarray}{c}
                    \delta f(x)=1\\
                    |\delta f|\le 1
            \end{subarray} }\delta\delta^*\delta f(x),$$

事实上只需考虑$f\in C(X_0).$

显然有如下转化:

$$\kappa(x)=\inf_{\begin{subarray}{c}
                    h(x)=1\\
                    |h|\le 1\\
                    h\in \delta(C(X_0))
            \end{subarray} }\delta\delta^*h(x),$$

**定理 1.2**. *$K=(X,\delta,m),$ $x\in X_k,$ $k\in \mathbb{N}.$ 若所有含$x$的长度不超过$5$的圈都是$2$-胞腔, 那么有:* 

$$\kappa(x)=\inf_{\begin{subarray}{c}
                    h(x)=1\\
                    |h|\le 1\\
                    \delta x\cdot\delta h\le 0
            \end{subarray} }\delta\delta^*h(x),$$

### 两者联系

**推论 1.3**. *$G=(X,\delta,m)$为$1$维胞腔复形, 那么$\,\forall\,x\in X_1,$* 

$$\kappa(x)=\max_{G\le_1 K}F_K(x),$$

**证:** 令$G\le_1 X,$ $X$包含所有可能的$2$-胞腔,
自然全体长度不超过$5$的圈都是$2$-胞腔. 那么:
$$\kappa(x)=\inf_{\begin{subarray}{c}
                            h(x)=1\\
                            |h|\le 1\\
                            \delta x\cdot\delta h\le 0
                    \end{subarray} }\delta\delta^*h(x)=\max_{K\le_1 X} F_K(x)=\max_{X^{(1)}\le_1 K}F_K(x)=\max_{G\le_1 K}F_K(x).$$

也就是可以通过粘贴合适权重的$2$-胞腔,
使得新图的Forman曲率与原有的Ollivier曲率相同.

**推论 1.4**. *$K=(X,\delta,m),$ $x\in X,$ 那么:* 

$$F(x)\le\kappa(x).$$

**证:**
$$F(x)\le \max_{K^{(1)}\le_1 X}F_X(x)=\kappa_{K^{(1)} }(x)=\kappa(x).$$

调整距离
--------

### 基本性质

定义Ollivier曲率时可以选取其它的距离. 赋予图另一权重$\omega,$
定义路径距离$d_\omega:X_0\rightarrow [0,\infty),$
$$d_\omega(v,w):=\inf\{\sum_{k=1}^n \omega(v_k,v_{k-1}):v=v_0\sim\cdots\sim v_n=w\}.$$

总是假设$\omega$是非退化的, 即边总是顶点间的最短距离. 定义关于$\omega,$
或称关于$d_\omega$的Ollivier曲率:
$$\omega(x)\kappa_\omega(x):=\inf_{\begin{subarray}{c}
        \delta f(x)=\omega(x)\\
        |\delta f|\le \omega\end{subarray} }\delta\delta^*\delta f.$$
非退化的要求实际上意味着在$X_1$上Ollivier曲率是有限的.

为了令Forman曲率与新的Ollivier曲率相容,
改造其为关于$\omega$的Forman曲率:
$$F_\omega:=Hx(x)-\sum_{y\neq x}\frac{\omega(y)}{\omega(x)}|Hy(x)|.$$
$x\in X_1$时, 即为
$$F_\omega(x)=\sum_{v\prec x}\frac{m(x)}{m(v)}+\sum_{x\prec z}\frac{m(z)}{m(x)}-\sum_{x\neq y}\frac{\omega(y)}{\omega(x)}\left|\sum_{v\prec x,y}\frac{m(y)}{m(v)}-\sum_{x,y\prec z}\frac{m(z)}{m(x)}\right|.$$
事实上可以使它与之前得到Forman曲率的过程一致:
$$\omega F_\omega=D(\omega H)=\omega(x) Hx(x)-\sum_{y\neq x}|\omega(y)H_y(x)|.$$

### 对偶性质

类似地有:

**定理 1.5**. *$K=(X,\delta,m,\omega),$ $x\in X_k,$ $k\in \mathbb{N}.$ 那么有* 

$$\max_{K'\le_k K}\omega(x)F_\omega'(x)=\min_{
            \begin{subarray}{c}
                h(x)=\omega(x)\\
                |h|\le \omega\\
                \delta h\cdot \delta x\le 0
        \end{subarray} }\delta\delta^*h(x)$$

**定理 1.6**. *$K=(X,\delta,m,\omega),$ $x\in X_k,$ $k\in \mathbb{N}.$ 若所有含$x$的极小圈都是$2$-胞腔, 那么有:* 

$$\omega(x)\kappa(x)=\inf_{\begin{subarray}{c}
                h(x)=\omega(x)\\
                |h|\le \omega\\
                \delta x\cdot\delta h\le 0
        \end{subarray} }\delta\delta^*h(x),$$

**推论 1.7**. *$G=(X,\delta,m,\omega)$为$1$维胞腔复形, 那么$\,\forall\,x\in X_1,$* 

$$\kappa_\omega(x)=\max_{G\le_1 K}F_{K,\omega}(x),$$

**推论 1.8**. *$K=(X,\delta,m,\omega),$ $x\in X,$ 那么:* 

$$F_\omega(x)\le\kappa_\omega(x).$$

### Forman曲率原定义

Forman定义的关于权重$w$的曲率为:
$$\frac{F_o(x)}{w(x)}:=\sum_{v\prec x} \frac{w(v)}{w(x)}+\sum_{x\prec z}\frac{w(x)}{w(z)}-\sum_{y\neq x}\left|\sum_{v\prec x,y}\frac{w(v)}{\sqrt{w(y)w(x)} }-\sum_{x,y\prec z}\frac{\sqrt{w(x)w(y)} }{w(z)}\right|,$$
$x\in X_1.$ 可以看出去掉极小对角占优算子前, 算子$H$是已经对称化过的.

文中定义的是:
$$F_\omega(x)=\sum_{v\prec x}\frac{m(x)}{m(v)}+\sum_{x\prec z}\frac{m(z)}{m(x)}-\sum_{x\neq y}\frac{\omega(y)}{\omega(x)}\left|\sum_{v\prec x,y}\frac{m(y)}{m(v)}-\sum_{x,y\prec z}\frac{m(z)}{m(x)}\right|,$$
不难发现当$m=\frac{1}{w},$ $\omega=\sqrt{w}$时,
有$F_\omega(x)=\frac{F_o(x)}{w(x)}.$

文章最后更新于 2021-10-23 11:13:29 
