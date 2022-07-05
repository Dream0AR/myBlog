---
title: 《现代PDE基础》笔记(10)-复习
date: 2021-12-26 16:23:42
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

广义函数
--------

### 基本定义

$C_c^\infty\subset \mathscr{S}\subset C^\infty,$
记为$\mathscr{D}\subset \mathscr{S}\subset \mathscr{E},$
那么$\mathscr{D}'\supset \mathscr{S}'\supset \mathscr{E}'.$
注意这里用到基本空间前者在后者稠密.

广义函数的连续性等价于有界性. 注意这里有界性较为特殊,
因为基本空间不是赋范的. 但是可以取到一列范数.

由该性质可以得到一个重要的对偶性质: $(\mathscr{D}')_c=\mathscr{E}'.$

### 磨光

$\alpha_\varepsilon(x)=\frac{1}{\varepsilon^n}\alpha(\frac{x}{\varepsilon}).$
称卷积$J_\varepsilon f:=f_\varepsilon=\alpha_\varepsilon\ast f$为$f$的磨光.
由于$\alpha_\varepsilon$为径向函数, 我们有:


$$
\left<{}\alpha_\varepsilon\ast T,\varphi\right>=\left<{}T_x,\left<{}\alpha_\varepsilon(y),\varphi(x+y)\right>\right>=\left<{}T,\alpha_\varepsilon\ast \varphi\right>.
$$


当$T\in \mathscr{D}'$时, $\alpha_\varepsilon\ast T\in C^\infty.$

由Minkowski不等式,
$\Vert\alpha_\varepsilon\ast f\Vert_{L^p}\le \Vert f\Vert_{L^p}.$
Minkowski不等式可由离散情况推得, 或由泛函分析方法证明.
当$\varepsilon\rightarrow 0$时,
我们有$f_\varepsilon\xrightarrow{L^p} f.$

### 求导

广义函数"差不多"总能写成常义函数的导数. 这里求导为广义导数, 如:


$$
\left<{}T,\varphi\right>=\left<{}D^\alpha f,\varphi\right>=(-1)^{|\alpha|}\left<{}f,D^\alpha \varphi\right>.
$$


求导的定义来源于分部积分, 由Gauss-Green公式推导.


$$
\int_\Omega \partial f\cdot g+f\cdot \partial g=\int_{\Omega} \partial(fg)=\int_{\partial \Omega} fg\cdot \gamma,
$$


当$f,g$有一者在边界上取零时, 右端得零, 建立了关于左端的等式.

### Fourier变换

对于速降函数, 有Fourier变换:


$$
F[f] (\xi)=\widehat{f}(\xi):=\int_{\mathbb{R}^n} f(x)e^{-ix\cdot \xi}dx,
$$


有Fourier逆变换:


$$
f(x)=F^{-1}[\widehat{f}] (x):=(2\pi)^{-n}\int_{\mathbb{R}^n}\widehat{f}(\xi)e^{ix\cdot \xi}d\xi,
$$


满足:


$$
\widehat{D^\alpha f}(\xi)=\xi^\alpha \widehat{f}(\xi),\quad D^\alpha=\frac{1}{i^{|\alpha|} }\partial^\alpha,
$$




$$
\widehat{fg}=(2\pi)^{-n}\widehat{f}\ast \widehat{g}.
$$



我们有经典的命题: $F:\mathscr{S}\cong \mathscr{S}$为连续同构.
这直接诱导了$F:\mathscr{S}'\cong \mathscr{S}',$
$\left<{}F[T],\varphi\right>:=\left<{}T,F[\varphi]\right>.$
这是由Fubini定理保证的. 我们还有Plancherel公式:


$$
\int_{\mathbb{R}^n}\widehat{f}\overline{\widehat{g} }\bar{d}\xi=\int_{\mathbb{R}^n} f \overline{g}dx,\quad \bar{d}\xi=(2\pi)^{-n}d\xi.
$$


取$g=f,$ 即得到了连续情形的Parseval恒等式.

Sobolev空间
-----------

### Sobolev不等式



$$
\Vert u\Vert_{L^q}\le C|u|_{\dot{H}^{m,p} },\quad \frac{n}{q}=\frac{n}{p}-m;
$$





$$
|u|_{C^\alpha}\le C|u|_{\dot{H}^{m,p} },\quad -\alpha=\frac{n}{p}-m,\,\alpha\in (0,1);
$$





$$
\Vert u\Vert_{L^\infty}\le C\Vert u\Vert_{H^{m,p} },\quad 0>\frac{n}{p}-m;
$$





$$
\Vert u\Vert_{L^\infty}\le C\Vert u\Vert_{H^{s} },\quad 0>\frac{n}{2}-s;
$$





$$
\Vert u\Vert_{L^q}\le C\Vert u\Vert_{H^{m,p} },\quad \frac{n}{p}-m=0,\, q\ge p.
$$



关于最后一个不等式, 左侧量纲为$\frac{n}{q},$
右侧量纲为$[\frac{n}{p}-m,\frac{n}{p}]=[0,m].$ 为了使不等式成立,
左侧量纲一定要落在该区间中.
从而$\frac{n}{q}\le \frac{n}{p}=m\,\Rightarrow\,q\ge p$的条件是必要的.

我们还有Poincaré不等式:


$$
\Vert u\Vert_{L^p}\le d\Vert\nabla u\Vert_{L^p}=d|u|_{\dot{H}^{1,p} },\quad \,\forall\,u\in H_0^{1,p}(\Omega).
$$



### 定理

**等价模定理**: 由**Lions延拓**,
$H^{m,p}(\Omega)$中的函数总可以延拓为$H^{m,p}(\mathbb{R}^n)$中的函数.
定义


$$
\Vert f\Vert_{\widetilde{H}^{m,p}(\Omega)}=\inf_{\widetilde{f}|_\Omega =f}\Vert\widetilde{f}\Vert_{H^{m,p}(\mathbb{R}^n)},
$$


则凭借由Lions延拓得到的$\widetilde{f},$ 我们有:


$$
\Vert f\Vert_{H^{m,p}(\Omega)}\le \Vert f\Vert_{\widetilde{H}^{m,p}(\Omega)}\le \Vert\widetilde{f}\Vert_{H^{m,p}(\mathbb{R}^n)}\le C\Vert f\Vert_{H^{m,p}(\Omega)},
$$



**紧嵌入定理**: 当Sobolev不等式中条件严格时,
即$\frac{n}{q}>\frac{n}{p}-m,$
此时$H^{m,p}(\Omega)\hookrightarrow L^{q}(\Omega)$的嵌入是紧的,
即将有界集映成列紧集.

**迹定理**:


$$
\Vert u\Vert_{H^{s-\frac{1}{2} }(\partial\Omega)}\le C\Vert u\Vert_{H^s(\Omega)},\quad s>\frac{1}{2}
$$


一个最常应用的简单推论是:


$$
\Vert u\Vert_{L^2(\partial \Omega)}\le C\Vert u\Vert_{H^1(\Omega)}.
$$



关于对偶空间: 需要注意的是, $H^{-1}(\Omega):=(H_0^1(\Omega))^\ast ,$
并不是$H^1(\Omega)$的对偶空间. 仅当$\Omega=\mathbb{R}^n$时,
$H_0^1(\mathbb{R}^n)=H^1(\mathbb{R}^n).$ 同时, 由Riesz表示定理,
$H^{-1}(\Omega)\cong H_0^1(\Omega),$ 当并不相等.
因为前者视为$\mathscr{D}'(\Omega)$的子空间, 以$L^2(\Omega)$为子空间,
泛函取为做$L^2$内积; 而后者以$H^1$内积为泛函, 这导致对偶空间出现了不同,
但总归是同构对应的.

PDE
---

### 基本定义

二阶椭圆方程: 

$$
Lu=\sum \partial_i(a_{ij}u_j)+\sum b_i u_i+cu.
$$



二阶双曲方程:


$$
Mu=u_{tt}-\sum \partial_i (a_{ij}u_j)-\sum b_{0j}u_{ti}+\sum b_iu_i+b_0 u_t+cu.
$$


可记为$Mu=u_{tt}-M_1u_t+M_2u.$

二阶抛物方程: 

$$
Nu=u_{t}-\sum \partial_i (a_{ij}u_j)+\sum b_i u_i+cu.
$$


可记为$Nu=u_t-N_1u.$

系数$a_{ij}$对称且满足椭圆性条件:
$\sum a_{ij}\xi_i\xi_j\ge \alpha|\xi|^2.$ 当涉及时间项时, 条件是一致的.

### 能量方法

对椭圆型方程, $\left<{}u,Lu\right>$给出Garding不等式;

双曲型方程的$\left<{}u_t,Mu\right>,$
抛物型方程的$\left<{}u,Nu\right>$给出能量估计.

### Galerkin方法

取基本空间的一组基$\{\varphi_i\},$ 考虑$u_m=\sum a_i\varphi_i,$ 解


$$
\left<{}Lu_m-f,\varphi_i\right>=0,\quad i=1,\cdots,m.
$$


这化为了线性方程组$Ax=b$的形式, 求解系数即可.
这里可解性由Garding不等式保证. $\frac{A+A^T}{2}$正定时, $A$可逆.
而式中二次型可写为$x^T\frac{A+A^T}{2}x=\left<{}-Lu,u\right>$的形式,
当$C_2\le 0$时, 即推知正定性.

对涉及时间项的Galerkin方法, 需考虑$u_m=\sum a_i(t)\varphi_i.$ 此时


$$
\left<{}Mu_m,\varphi_i\right>=\left<{}f,\varphi_i\right>,\quad i=1,\cdots,m
$$


为$m$个ODE, 总是可解的. 具体地,


$$
\sum \left<{}\varphi_j,\varphi_i\right>a_j''-\left<{}M_1\varphi_j,\varphi_i\right>a_j'+\left<{}M_2\varphi_j,\varphi_i\right>a_j=\left<{}f,\varphi_i\right>.
$$


类似地, 对抛物型方程, 问题为:


$$
\left<{}Nu_m,\varphi_i\right>=\sum \left<{}\varphi_j,\varphi_i\right>a_j'-\left<{}N_1\varphi_j,\varphi_i\right>a_j=\left<{}f,\varphi_i\right>.
$$



### 算子半群

考虑问题$u_t=N_1u,$ 形式上, $e^{N_1t}u_0$给出了问题解. 具体的,
考虑$N_\lambda:=\lambda N_1(\lambda-N_1)^{-1},$
定义$e^{N_1t}:=\lim\limits_{\lambda\rightarrow+\infty}e^{N_\lambda t}$来将表示严格化.

文章最后更新于 2021-12-26 16:23:44 
