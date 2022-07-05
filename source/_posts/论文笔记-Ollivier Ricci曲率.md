---
title: 论文笔记-Ollivier Ricci曲率
date: 2021-11-24 13:32:31
categories: 
- 笔记
- 科研
- 图上曲率
mathjax: true
---

Ollivier Ricci Curvature For General Graph Laplacians: Heat Equation,
Laplacian Comparison, Non-explosion And Diameter Bounds - Florentin
Münch, RadosŁaw K. Wojciechowski

讨论局部有限连通图$G(V,w,m),$ 基本定义不再介绍.

Ollivier曲率
------------

### Wasserstein距离

记$f\in \operatorname{Lip}(1),$ 若$|f(x)-f(y)|\le d(x,y),$
$\,\forall\,x,y\in V.$ 对两个$V$上给定概率测度$\mu,\nu,$
定义Wasserstein距离:


$$
W(\mu,\nu):=\sup_{f\in \operatorname{Lip}(1)\cap \ell_\infty(V)}\int f d\mu-\int f d\nu=\sup_{f\in \operatorname{Lip}(1)\cap \ell_\infty(V)}\sum_{x\in V}f(x)(\mu(x)-\nu(x)).
$$



注意$f$相差常数不改变取值. 它有等价的表示:


$$
W(\mu,\nu):=\inf_\rho \sum_{x,y\in V}\rho(x,y)d(x,y),
$$


其中$\rho:V^2\rightarrow[0,1],$ 满足$\sum_{y}\rho(x,y)=\mu(x),$
$\sum_{x}\rho(x,y)=\nu(y),$ 即$\rho(x,y)$是一个$\mu$与$\nu$的联合分布,
称为$\mu$与$\nu$的配对.

对$\varepsilon>0,$ 定义
$$
m_x^\varepsilon(y):=1_y(x)+\varepsilon\Delta 1_y(x)=
 \left\{
 \begin{aligned}
 &1-\varepsilon\deg(x),&&y=x\\
 &\varepsilon\frac{w(x,y)}{m(x)},&&y\neq x.
 \end{aligned}
 \right.
$$
 那么当$\varepsilon$充分小时,
容易看出它是一个有限支撑的(非负)概率测度. 特别地, 我们有:


$$
\int f dm_x^\varepsilon=\sum_y f(y)m_x^\varepsilon(y)=(f+\varepsilon\Delta f)(x).
$$


对标准Laplace算子, $m_x^\varepsilon$的定义与Lin-Lu-Yau曲率中的定义相符,
令$\varepsilon=1-\alpha.$ 类似地, 定义


$$
\kappa_\varepsilon(x,y):=1-\frac{W(m_x^\varepsilon,m_y^\varepsilon)}{d(x,y)}, \quad \kappa(x,y):=\lim\limits_{\varepsilon\rightarrow 0+}\frac{\kappa_\varepsilon(x,y)}{\varepsilon}.
$$


$\varepsilon$的引入是在模仿流形上缩小邻域的方法,
这样当$\varepsilon\rightarrow 0$时, 点越有可能留在$x$处,
有些类似于爆破分析.

### 免极限表示

定义梯度


$$
\nabla_{xy}f:=\frac{f(x)-f(y)}{d(x,y)},\quad \,\forall\,x\neq y\in V.
$$



定义


$$
\Vert\nabla f\Vert_{\infty}:=\sup_{x\neq y}|\nabla_{xy} f|=\sup_{x\sim y}|\nabla_{xy} f|\in [0,\infty].
$$



对$K\ge 0,$
令$\operatorname{Lip}(K)=\{f\in C(V):\Vert\nabla f\Vert_{\infty}\le K\}.$
其中元素为具Lipschitz常数$K$的函数.

**定理 1**. *对$x\neq y,$ 我们有对Ollivier曲率免极限的Laplacian表示方式:* 

$$
\kappa(x,y)=\inf\limits_{\begin{subarray}{c}
 f\in \operatorname{Lip}(1)\cap C_c(V)\\
 \nabla_{yx}f=1
 \end{subarray} }\nabla_{xy}\Delta f.
$$

**证:** 由定义, 由于测度是有限支撑的, 可去掉$\ell^\infty$的要求, 那么:
$$
\begin{aligned}
 W(m_x^\varepsilon,m_y^\varepsilon)&=\sup_{f\in \operatorname{Lip}(1)}\sum_z f(z)(m_y^\varepsilon(z)-m_x^\varepsilon(z))\\
 &=d(x,y)\sup_{f\in \operatorname{Lip}(1)}\nabla_{yx}(f+\varepsilon\Delta f). 
 \end{aligned}
$$

因此 
$$
\begin{aligned}
 \frac{\kappa_\varepsilon(x,y)}{\varepsilon}&=\frac{1}{\varepsilon}(1-\sup_{f\in \operatorname{Lip}(1)}\nabla_{yx}(f+\varepsilon\Delta f))\\
 &=\inf_{f\in \operatorname{Lip}(1)} \nabla_{xy}\Delta f+\frac{1}{\varepsilon}(1-\nabla_{yx}f)\\
 &\le \inf\limits_{\begin{subarray}{c}
 f\in \operatorname{Lip}(1)\cap C_c(V)\\
 \nabla_{yx}f=1
 \end{subarray} }\nabla_{xy}\Delta f.
 \end{aligned}
$$

反过来,
需要找到使得$\nabla_{xy}\Delta f+\frac{1}{\varepsilon}(1-\nabla_{yx}f)$达到极小的$f_\varepsilon\in \operatorname{Lip}(1).$
由于希望取得极小的式子只与$B_1(x)\cup B_1(y)$有关,
总可以将$f$改造为支撑在$B_{2d(x,y)+2}(x)$上的函数并加减常数使得$f(x)=0,$
而不影响取值.
此时$\operatorname{Lip}(1)\cap C_c(V)\cap \{f(x)=0\}$为紧集,
极小化子$f_\varepsilon$是存在的, 且$f_\varepsilon\in C_c(V),$
$f_\varepsilon(x)=0.$

此时$\{f_\varepsilon\}$有子列$\{f_{\varepsilon_n}\}$收敛至$f_0,$
$\varepsilon_n\rightarrow 0+,$ $n\rightarrow \infty.$ 由于


$$
\frac{\kappa_{\varepsilon_n}(x,y)}{\varepsilon_n}=\nabla_{xy}\Delta f_{\varepsilon_n}+\frac{1}{\varepsilon_n}(1-\nabla_{yx}f_{\varepsilon_n})\rightarrow \kappa(x,y)<\infty,
$$


必有$\nabla_{yx}f_{\varepsilon_n}\rightarrow 1=\nabla_{yx}f_0.$
同时$f_{\varepsilon_n}\in \operatorname{Lip}(1)$ $\Rightarrow$
$f_0\in \operatorname{Lip}(1).$

于是, 
$$
\begin{aligned}
 \kappa(x,y)&=\lim_{n\rightarrow \infty} \nabla_{xy}\Delta f_{\varepsilon_n}+\frac{1}{\varepsilon_n}(1-\nabla_{yx}f_{\varepsilon_n})\\
 &\ge \nabla_{xy}\Delta f_0 \ge \inf\limits_{\begin{subarray}{c}
 f\in \operatorname{Lip}(1)\cap C_c(V)\\
 \nabla_{yx}f=1
 \end{subarray} }\nabla_{xy}\Delta f.
 \end{aligned}
$$

综上, 命题得证.

**注 2**. *事实上, 取下确界时, 可以只考虑整函数值Lipschitz函数. 特别地, 在组合图上, Ollivier曲率$\kappa(x,y)$总是整数值, $\,\forall\,x\sim y.$* 

**定理 3**. *对$x_0\neq y_0,$ 我们有对Ollivier曲率免极限的运输成本表示方式:* 

$$
\kappa(x_0,y_0)=\sup_{\rho}\sum_{\begin{subarray}{c}
 x\in B_1(x_0)\\ y\in B_1(y_0)
 \end{subarray} }\rho(x,y)\left[1-\frac{d(x,y)}{d(x_0,y_0)}\right]
$$
*其中配对$\rho:B_1(x_0)\times B_1(y_0)\rightarrow[0,\infty)$满足*


$$
\sum_y \rho(x,y)=\frac{w(x_0,x)}{m(x_0)}, \quad \,\forall\,x\in S_1(x_0);
$$




$$
\sum_x \rho(x,y)=\frac{w(y_0,y)}{m(y_0)}, \quad \,\forall\,y\in S_1(y_0).
$$



**证:**
记$F(\rho)=\sum_{x,y}\rho(x,y)\left[1-\frac{d(x,y)}{d(x_0,y_0)}\right],$
需说明$\kappa(x_0,y_0)=\sup_\rho F(\rho).$

首先由定义,


$$
\frac{\kappa_\varepsilon(x_0,y_0)}{\varepsilon}=\frac{1}{\varepsilon}\left(1-\frac{W(m_{x_0}^\varepsilon,m_{y_0}^\varepsilon)}{d(x_0,y_0)}\right)=\sup_{\widetilde{\rho} } F(\widetilde{\rho}),
$$


配对$\widetilde{\rho}$满足


$$
\sum_y \widetilde\rho(x,y)=\frac{1}{\varepsilon}m_{x_0}^\varepsilon(x)=\frac{1}{\varepsilon}1_x(x_0)+\Delta 1_x(x_0), \quad \,\forall\,x\in B_1(x_0);
$$




$$
\sum_x \widetilde\rho(x,y)=\frac{1}{\varepsilon}m_{y_0}^\varepsilon(y)=\frac{1}{\varepsilon}1_y(y_0)+\Delta 1_y(y_0), \quad \,\forall\,y\in B_1(y_0).
$$


注意到, 对于任意满足条件的$\widetilde\rho,$ 其也满足$\rho$的条件.
因此$\kappa(x_0,y_0)\le \sup_{\rho} F(\rho);$

反过来, 任意给定一个$\rho,$ 我们构造:


$$
\widetilde{\rho}_\varepsilon(x_0,y)=\rho(x,y)+1_x(x_0)1_y(y_0)\left(\frac{1}{\varepsilon}-\sum_{u,v}\rho(u,v)\right).
$$


那么,


$$
\sum_y \widetilde{\rho}_\varepsilon(x,y)=\sum_y \rho(x_0,y)+\frac{1}{\varepsilon}-\sum_{u,y}\rho(u,y)=\frac{1}{\varepsilon}+\Delta 1_{x_0}(x_0),
$$


类似地对$x$求和也满足性质.
注意到$F(\rho)=F(\widetilde{\rho}_\varepsilon),$
因为它们只在$(x_0,y_0)$处有区别, 然而该点对$F$无贡献.
这就说明了$\kappa(x_0,y_0)\ge \sup_\rho F(\rho).$

梯度估计
--------

### 永久截断方法

Perpetual cutoff method.

有两种不同方式. Perpetual cutoff method and discrete Ricci curvature
bounds with exceptions中考虑Bakry-Emery曲率, 在空间上截断:


$$
P_t^Wf:=\sup_{t_1+\cdots+t_n=t}Q_{t_1}^W\cdots Q_{t_n}^Wf,\quad Q_t^Wf:=S^WP_tf,\quad S^Wf:=f\vee \sup_{\overline W}f.
$$



本文考虑时间上的截断: 取非负函数$\phi\in C_c(V),$ $f\in [0,\phi],$ 定义:


$$
Q_t^\phi f:=P_tf\wedge \phi,\quad P_t^\phi f:=\inf_{t_1+\cdots+t_n=t}Q_{t_1}^\phi\cdots Q_{t_n}^\phi f.
$$



通过这种方式, 我们让$\phi\rightarrow 1$.
一旦$P_t^\phi f\rightarrow P_t f$确实成立,
那么就可以通过$P_t^\phi f$的性质导出$P_tf$的性质.
而$P_t^\phi f(x)$关于$x$具紧支集, 许多性质是容易得到的.

**定理 4**. *$\{P_t^\phi\}$构成非线性收缩半群, 关于$L^p$模. 对$f,g\in [0,\phi],$ $s,t\ge 0,$ 我们有如下性质:* 

(i) $P_t^\phi P_s^\phi=P_{t+s}^\phi,$

(ii) $\Vert P_t^\phi f-P_t^\phi g\Vert_p\le \Vert f-g\Vert_p,$

(iii) $P_0^\phi f=f,$

(iv) $P_t^\phi f\ge P_t^\psi g,$ 若$\phi\ge \psi \ge f\ge g.$

(v) $e^{-t\deg}f\le P_t^\phi f\le P_t f,$

(vi) $P_t^\phi f$为关于$t$的Lipschitz函数,

(vii) $\overline{\partial^{\pm}_t}P_t^\phi f\le \Delta P_t^\phi f,$

(viii) $\partial_t P_t^\phi f(x)=\Delta P_t^\phi f(x),$
 若$P_t^\phi f(x)<\phi(x),$

(ix) $P_t^{1_W} f=e^{t\Delta_W}f,$ $W$有限,
 $\Delta_W f=1_W\Delta(1_W f).$

**证:**

(i) 由定义, 自然得到 
$$
P_t^\phi P_s^\phi f\le \inf_{\begin{subarray}{c}
 t_1+\cdots+t_n=t\\
 s_1+\cdots+s_m=s
 \end{subarray} }Q_{t_1}^\phi\cdots Q_{s_m}^\phi f \ge P_{s+t}^\phi f.
$$
 第一个不等式的反向, 利用$\,\forall\,\phi\ge g\ge f\ge 0,$
 有$Q_t^\phi g\ge Q_t^\phi f$即可; 第二个不等式的反向,
 利用$Q_t^\phi Q_s^\phi f\le Q_{t+s}^\phi f$即可.

(ii) 只需利用
 

$$
\Vert Q_t^\phi f-Q_t^\phi g\Vert_p\le \Vert P_tf-P_tg\Vert_p\le \Vert f-g\Vert_p,
$$


 利用三角不等式即有$\Vert P_t^\phi f-P_t^\phi g\Vert_p\le \Vert f-g\Vert_p.$

(iii) $P_0f=f,$ $f\wedge \phi=f.$

(iv) $a\ge c$且$b\ge d$ $\Rightarrow$ $a\wedge b\ge c\wedge d.$

(v) 只需注意到
 

$$
P_tf(x)\ge p_t(x,x)f(x)=e^{t\Delta}1_x(x)f(x)\ge e^{-t\deg(x)} f(x),
$$


 这是因为 

$$
e^{t(\Delta+\deg(x))}1_x(x)\ge 1.
$$


 从而

$$
e^{-t\deg} f\le P_t f\wedge \phi=Q_t^\phi f\le P_t f\,\Rightarrow\, e^{-t\deg} f\le P_t^\phi f\le P_tf.
$$



(vi) 利用$\phi\in C_c(V),$ 以及上面的估计, 我们有:
 

$$
-C_\phi t\le 1_{\operatorname{supp}\phi}(e^{-t\deg}-1) f\le P_t^\phi f-f\le 1_{\operatorname{supp}\phi}(P_t-1)f\le C_\phi t,\quad \,\forall\,f\in [0,\phi], t\ge 0.
$$


 由半群性质, 立即得到$P_t^\phi f$以$C_\phi$为Lipschitz常数.

(vii) 再多做一阶展开, 即有
 

$$
\frac{1}{t}(P_t^\phi f-f)\le \frac{1}{t}1_{\operatorname{supp}\phi}(P_tf-f)\le \Delta f+C_\phi't.
$$


 注意我们用到了$1_{\operatorname{supp}\phi}\Delta f\le \Delta f,$
 $f\in[0,\phi].$ 因此, 我们计算:
 

$$
\overline{\partial_t^+}P_t^\phi f=\varlimsup_{\varepsilon\rightarrow 0+} \frac{1}{\varepsilon}(P_\varepsilon^\phi P_t^\phi f-P_t^\phi f)\le \Delta P_t^\phi f.
$$


 

$$
\overline{\partial_t^-}P_t^\phi f=\varlimsup_{\varepsilon\rightarrow 0-} \frac{1}{-\varepsilon}(P_{-\varepsilon}^\phi P_{t+\varepsilon}^\phi f-P_{t+\varepsilon}^\phi f)\le \varlimsup_{\varepsilon\rightarrow 0-} \Delta P_{t+\varepsilon}^\phi f-C_\phi'\varepsilon\le \Delta P_t^\phi f.
$$


 综上, $\overline{\partial_t^\pm}P_t^\phi f\le \Delta P_t^\phi f.$

(viii) 我们需要做一些准备. 定义$\Delta^x:C(V)\rightarrow C(V),$
 
$$
\Delta^x f(y):=\left\{
 \begin{aligned}
 &\Delta f(x)& y=x\\
 &-\deg(y)f(y)& y\neq x
 \end{aligned}\right.
$$
 令$P_t^x:=e^{t\Delta^x},$ 那么它也是保符号的,
 因为$P_t^xf(y)=e^{-t\deg(y)}f(y),$
 $P_t^xf(x)=e^{t\Delta}f(x)=P_tf(x).$

 **引理 5**. *$t>0,$ $f\in[0,\phi].$ 若$P_sf(x)\le \phi(x),$  $\,\forall\,s\in[0,t],$ 那么$P_t^xf\le P_t^\phi f.$* 

 **证:** 显然$P_s^xf\le P_sf.$ 而$P_s^xf(y)\le f(y)\le \phi(y),$
 $P_s^xf(x)\le P_sf(x)\le \phi(x),$ 因此$P_t^xf\le Q_t^\phi f.$
 归纳地, 对$s_1+\cdots+s_n=t,$ 有
 

$$
P_t^xf=P_{s_1+\cdots+s_n}^x f=P_{s_1}^x\cdots P_{s_n}^x f\le Q_{s_1}^\phi\cdots Q_{s_n}^\phi f.
$$


 取下确界即说明$P_t^xf\le P_t^\phi f.$

 回到命题, 我们只需证当$P_t^\phi f(x)<\phi(x)$时,
 $\underline{\partial_t}P_t^\phi f(x)\ge \Delta P_t^\phi f(x).$
 对任意$g\in[0,\phi],$ $\varepsilon>0,$
 $\,\exists\,\delta\in [0,\varepsilon],$ 使得
 

$$
\frac{1}{\varepsilon}(P_\varepsilon^xg-g)(x)=\Delta^xg(x)+\frac{\varepsilon}{2}\partial_s^2P_s^xg(x)|_{s=\delta}\ge \Delta g(x)-C_\phi''\varepsilon.
$$


 取$g=P_t^\phi f,$ 则$g(x)<\phi(x),$
 且$\,\exists\,\varepsilon>0$使得$P_sg(x)\le \phi(x),$
 $\,\forall\,s\in [0,\varepsilon].$ 由前面的引理,
 $P_\varepsilon^\phi g\ge P_\varepsilon^xg,$ 因此
 

$$
\underline{\partial_t^+}P_t^\phi f(x)\ge \varliminf_{\varepsilon\rightarrow 0+}\frac{1}{\varepsilon}(P_\varepsilon^xg-g)(x)\ge \Delta g(x)=\Delta P_t^\phi f(x).
$$


 类似地, 存在$-\varepsilon>0$使得$P_{t-s}^\phi f(x)\le \phi(x),$
 $\,\forall\,s\in [0,-\varepsilon].$
 

$$
\underline{\partial_t^-}P_t^\phi f(x)\ge \varliminf_{\varepsilon\rightarrow 0-}\frac{1}{-\varepsilon}(P_{-\varepsilon}^xP_{t+\varepsilon}^\phi f(x)-P_{t+\varepsilon}^\phi f(x))\ge \Delta P_t^\phi f(x).
$$


 综上, $\partial_t P_t^\phi f(x)=\Delta P_t^\phi f(x).$

(ix) 令$\phi=1_W.$ 若$W\neq V,$ 则$P_t^\phi f|_W<1,$ $\,\forall\,t>0.$
 由上一性质, 立即得到$P_t^\phi f=e^{t\Delta_W}f,$
 为$W$上唯一的Dirichlet问题解.

### 截断半群与Ricci曲率

对一般的$f\in C(V),$ 定义$P_t^\phi f:=P_t^\phi(f\wedge \phi),$ 特别地,
$P_0^\phi f=f\wedge \phi.$

**引理 6**. *设图$G=(V,m,w)$满足$\kappa\ge K,$ $f:V\rightarrow [0,1]$非常数, $T>0,$ $\phi:V\rightarrow [0,1]$紧支撑, 且$\Vert\nabla\phi\Vert_\infty<\Vert\nabla f\Vert_\infty(1\wedge e^{-KT}).$ 那么$\,\forall\,t\in [0,T],$* 



$$
\Vert\nabla P_t^\phi f\Vert_\infty\le e^{-Kt}\Vert\nabla f\Vert_\infty.
$$



**证:** 只需讨论$\kappa>K$的情形, 对$\kappa\ge K$考虑取极限即可. 定义


$$
F(t,x,y):=e^{Kt}\nabla_{yx}P_t^\phi f,
$$


只需证明$F\le \Vert\nabla f\Vert_\infty.$ 反证, 由紧支撑性,
假设$F(t_0,x_0,y_0)=F_{\max}>\Vert\nabla f\Vert_\infty.$



$$
F(0,x_0,y_0)=\nabla_{y_0x_0}(f\wedge \phi)\le \Vert\nabla f\Vert_\infty \vee\Vert\nabla \phi\Vert_\infty=\Vert\nabla f\Vert_\infty<F(t_0,x_0,y_0),
$$


因此$t_0>0.$ 注意到$P_{t_0}^\phi f(x_0)<\phi(x_0),$ 不然


$$
\nabla_{y_0x_0}P_{t_0}^\phi f\le \nabla_{y_0x_0}\phi<\Vert\nabla f\Vert_\infty(1\wedge e^{-KT})\le \Vert\nabla f\Vert_\infty e^{-Kt_0}\,\Rightarrow\, F(t_0,x_0,y_0)<\Vert\nabla f\Vert_\infty.
$$


由此, 由性质(*viii*),
$\partial_t P_t^\phi f(x_0)|_{t=t_0}=\Delta P_{t_0}^\phi f(x_0),$
而由性质(*vii*),
$\overline{\partial_t^-}P_t^\phi f(y_0)|_{t=t_0}\le \Delta P_{t_0}^\phi f(y_0).$
因此做差得到$\underline{\partial_t^-} \nabla_{x_0y_0} P_t^\phi f|_{t=t_0}\ge \nabla_{x_0y_0}\Delta P_{t_0}^\phi f.$

注意到$\Vert\nabla P_{t_0}^\phi f\Vert_\infty\le F_{\max}e^{-Kt_0},$
且$\nabla_{y_0x_0}P_{t_0}^\phi f=F_{\max} e^{-Kt_0},$
由Ollivier曲率定义,


$$
F_{\max} e^{-Kt_0}K<F_{\max} e^{-Kt_0}\kappa(x_0,y_0)\le \nabla_{x_0y_0}\Delta P_{t_0}^\phi f\le \underline{\partial_t^-} \nabla_{x_0y_0}P_t^\phi f|_{t=t_0}.
$$



从而,


$$
\overline{\partial_t^-}F(t_0,x_0,y_0)=KF_{\max}-e^{Kt_0}\underline{\partial_t^-} \nabla_{x_0y_0} P_t^\phi f|_{t=t_0}<KF_{\max}-KF_{\max}=0.
$$


这与$F(t_0,x_0,y_0)=F_{\max},$ $t_0>0$矛盾. 因此,
$F\le \Vert\nabla f\Vert_{\infty},$ 命题得证.

**引理 7**. *设图$G=(V,m,w)$满足$\kappa\ge K,$ $f:V\rightarrow [0,1]$非常数. 那么$\,\forall\,t>0,$* 



$$
\Vert\nabla P_t f\Vert_\infty\le e^{-Kt}\Vert\nabla f\Vert_\infty.
$$



**证:** 任取$T>0,$ 对$t\in[0,T]$证明结论即可.
取$\{W_n\}$为$V$的穷竭序列, $\phi_n:V\rightarrow [0,1]$具紧支集,
满足$\phi_n|_{W_n}\equiv 1,$
$\Vert\nabla \phi_n\Vert_\infty<\Vert\nabla f\Vert_{\infty}(1\wedge e^{-KT}).$
那么$\,\forall\,x\neq y\in V,$ 由上面的引理,


$$
\nabla_{xy}P_t^{\phi_n}f\le e^{-Kt}\Vert\nabla f\Vert_\infty.
$$



由截断半群性质(*ix*),
$e^{t\Delta_{W_n} }=P_t^{1_{W_n} }$在$[0,1_{W_n}]$上.
由于$1_{W_n}\le \phi_n,$ 性质(*iv*)表示:


$$
e^{t\Delta_{W_n} }f=P_{t}^{1_{W_n} }f\le P_t^{\phi_n}f\le P_tf.
$$


回忆热半群定义, $e^{t\Delta_{W_n} }f\rightarrow P_tf,$
$n\rightarrow \infty,$ 我们有:


$$
\nabla_{xy}P_tf=\lim\limits_{n\rightarrow \infty}\nabla_{xy}P_t^{\phi_n}f\le e^{-Kt}\Vert\nabla f\Vert_{\infty}.
$$



**引理 8**. *设图$G=(V,m,w)$满足$\kappa\ge K,$ 则图$G$是统计完备的.* 

**证:** 取$\eta_i\rightarrow 1,$
$\Vert\nabla \eta_i\Vert_\infty\rightarrow 0,$
则$\,\forall\,x\neq y\in V,$ $t>0,$


$$
\nabla_{xy}P_t1=\lim\limits_{i\rightarrow \infty}\nabla_{xy}P_t\eta_i\le \lim\limits_{i\rightarrow \infty}e^{-Kt}\Vert\nabla\eta_i\Vert_\infty=0.
$$


从而$\Vert\nabla P_t 1\Vert_\infty=0,$
$\partial_t P_t1=\Delta P_t1=0\Rightarrow$ $P_t1\equiv P_01=1.$

### 半群特征

**定理 9** (梯度估计). *取图$G=(V,m,w),$ $K\in \mathbb{R},$ 则如下陈述等价:* 

(1) $\kappa\ge K;$

(2) $\,\forall\,f\in C_c(V),$ $t>0,$
 $\Vert\nabla P_tf\Vert_\infty\le e^{-Kt}\Vert\nabla f\Vert_\infty;$

(3) $\,\forall\,f\in \ell_\infty(V),$ $t>0,$
 $\Vert\nabla P_tf\Vert_\infty\le e^{-Kt}\Vert\nabla f\Vert_\infty;$

(4) $G$*是统计完备的, 且*$\,\forall\,x,y\in V,$ $t>0,$
 $W(p_t^x,p_t^y)\le e^{-Kt}d(x,y),$
 $p_t^x:=\frac{m}{m(x)}P_t1_x$*为热核.*

**证:** $(3)\Leftrightarrow (4):$ 只需注意到,
$\,\forall\,f\in \operatorname{Lip}(1)\cap \ell^\infty(V),$


$$
\int fdp_t^x-\int fdp_t^y=\sum_{z}f(z)(p_t^x(z)-p_t^y(z))=P_tf(x)-P_tf(y).
$$


$(1)\Rightarrow (3):$ 我们证明过的引理. $(3)\Rightarrow (2):$ 平凡.
$(2)\Rightarrow (1):$ 只需证明$\,\forall\,x\sim y,$


$$
\inf_{\begin{subarray}{c}f\in \operatorname{Lip}(1)\cap C_c(V)\\\nabla_{yx}f=1\end{subarray} }\nabla_{xy}\Delta f\ge K.
$$


任取$f\in \operatorname{Lip}(1)\cap C_c(V)$且$\nabla_{yx}f=1,$ 由$(2),$
$\nabla_{yx}P_tf\le e^{-Kt}.$ 在$t=0$处求导, 我们有:


$$
\nabla_{xy}\Delta f=-\partial_t^+\nabla_{yx}P_tf|_{t=0}=\lim\limits_{t\rightarrow 0+}\frac{1}{t}(\nabla_{yx}f-\nabla_{yx}P_tf)\ge \lim_{t\rightarrow 0+}\frac{1}{t}(1-e^{-Kt})=K.
$$



Laplacian比较原理
-----------------

### 基本概念

在Ricci曲率以$K$为下界的黎曼流形$M$上,
取以Ricci曲率恒为$K$的模型空间$H,$ 我们有**Laplacian比较原理**:


$$
\Delta^Md(x_0^M,\cdot)\le \Delta^Hd(x_0^H,\cdot).
$$

 在离散情形,
取**生灭链(Birth-Death Chain)**作为模型空间做离散类比.

**定理 10** (Laplacian比较原理). *取图$G=(V,w,m),$ 取$x_0\in V,$ 设$\kappa(x_0,\cdot)\ge K,$ 则* 



$$
\Delta d(x_0,\cdot)\le \deg(x_0)-Kd(x_0,\cdot).
$$

 **证:**
$\,\forall\,y\neq x_0\in V,$ 取$f:=d(x_0,\cdot).$
那么$f\in \operatorname{Lip}(1)$且$\nabla_{yx_0}f=1.$ 因此,
由Ollivier曲率等价表示,


$$
K\le \kappa(x_0,y)\le \nabla_{x_0y}\Delta f=\frac{\Delta f(x_0)-\Delta f(y)}{d(x_0,y)}=\frac{\deg(x_0)-\Delta f(y)}{d(x_0,y)}.
$$



对生灭链, 即图$G=(\mathbb{N}_0,w,m)$满足$w(m,n)=0,$
$\,\forall\,|m-n|\neq 1.$ 取$f(r):=d(0,r)=r,$ 计算得到曲率计算方式为:


$$
\kappa(r,R)=\nabla_{rR}\Delta f=\frac{\Delta f(r)-\Delta f(R)}{R-r}.
$$


对常曲率生灭链, 取$r=0,$ 即有


$$
K=\frac{\Delta f(0)-\Delta f(R)}{R}\,\Rightarrow\,\deg(0)-Kd(0,R)=\Delta f(R),
$$


因此该定理即为Laplacian比较原理的离散推广.

### 直径估计

**命题 11**. *取图$G=(V,w,m),$ 取$x\neq y\in V.$ 若$\kappa(x,y)>0,$ 则* 



$$
d(x,y)\le \frac{\deg(x)+\deg(y)}{\kappa(x,y)}
$$



**证:** 对充分小的$\varepsilon,$
有$W(1_x,m_x^\varepsilon)=\varepsilon\deg(x).$ 因此,


$$
W(m_x^\varepsilon,m_x^\varepsilon)\ge W(1_x,1_y)-W(1_x,m_x^\varepsilon)-W(1_y,m_y^\varepsilon)=d(x,y)-\varepsilon(\deg(x)+\deg(y))
$$


于是,


$$
\kappa_\varepsilon(x,y)=1-\frac{W(m_x^\varepsilon,m_y^\varepsilon)}{d(x,y)}\le \varepsilon\frac{\deg(x)+\deg(y)}{d(x,y)}.
$$


由于$\kappa(x,y)=\lim\limits_{\varepsilon\rightarrow 0+}\frac{\kappa_\varepsilon(x,y)}{\varepsilon},$
取极限整理即得到结论.

**推论 12**. *取图$G=(V,w,m),$ 若$\kappa\ge K>0,$ 则* 



$$
\operatorname{diam}(G)\le \frac{2\deg_{\max} }{K}.
$$



应用Laplacian比较原理, 通过给出新定义, 可以证明更好的直径估计,
并且给出衰减性相关性质.

文章最后更新于 2021-12-13 11:20:18 
