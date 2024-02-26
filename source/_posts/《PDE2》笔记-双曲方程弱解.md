---
title: 《PDE2》笔记-双曲方程弱解
date: 2022-12-24 09:06:51
categories: 
- 笔记
- PDE
- PDE2
mathjax: true
---

## 定义

$a^{ij},b^i,c$为在$\Omega_T$上的函数, 记


$$
Lu:=-(a^{ij}u_j)_i+b^iu_i+cu.
$$

 若$a^{ij}$对称, 满足一致条件,
则称$\partial_t^2+L$为$\Omega_T$上二阶线性散度型一致双曲算子.

考虑初边值问题 
$$
\begin{cases}
 u_{tt}+Lu=f&in\:\Omega_T\\
 u=0&on\:\partial\Omega\times (0,T]\\
 u|_{t=0}=g,u_t|_{t=0}=h&in\:\Omega
 \end{cases}
$$

在一致基础上, 考虑条件


$$
a^{ij}\in C^1(\overline\Omega_T),\quad b^i,c\in C(\overline\Omega_T).
$$




$$
f\in L^2(\Omega_T),\quad g\in H_0^1(\Omega),\quad h\in L^2(\Omega).
$$



双曲方程弱解需满足$u\in L^2(0,T;H_0^1(\Omega)),$
$u_{tt}\in L^2(0,T;H^{-1}(\Omega)),$ $\,\forall\,v\in H_0^1(\Omega),$
a.e. $t\in (0,T],$


$$
\left<{}u_{tt},v\right>+B[u,v;t]=\left<{}f(\cdot,t),v\right>
$$


为了满足初始条件, 需要$u,u_t\in C([0,T];\ast ),$
因此需要求$u_t\in L^2(0,T;L^2(\Omega))=L^2(\Omega_T),$ 这样


$$
u\in W^{1,2}(0,T;L^2(\Omega))\hookrightarrow C([0,T];L^2(\Omega)),
$$




$$
u_t\in W^{1,2}(0,T;H^{-1}(\Omega))\hookrightarrow C([0,T];H^{-1}(\Omega)).
$$


初值条件即指按相应模逼近, 未必是$g,h$原本所在的空间.

## Galerkin逼近

同理考虑$u_m=\sum_{k=1}^md_m^kw_k,$ 令$v=w_k,$
由$f_k=\left<{}w_k,f\right>\in L^2(0,T),$
$e_l^k=B[w_l,w_k;t]\in C([0,T]),$ 我们有如下定理:

**定理 1**. *$u_m\in H^2(0,T;H_0^1(\Omega))$存在唯一解, $d_m^k\in H^2(0,T),$ $k=1,\cdots,m.$* 

接下来做能量估计. 首先考虑$u,u_m'.$ 代入$v=u_m',$ 有


$$
(u_m'',u_m')+B[u_m,u_m';t]=(f,u_m')\le \frac{1}{2}\left(\Vert f\Vert_{L^2(\Omega)}^2+\Vert u_m'\Vert_{L^2}^2\right)
$$




$$
B[u_m,u_m';t]:=A(t)+B(t),\quad |B(t)|\le C(L,n)\left(\Vert u_m\Vert^2_{H^1(\Omega)}+\Vert u_m'\Vert_{L^2(\Omega)}\right)
$$




$$
A(t)=\frac{1}{2}\frac{d {} }{d {}t}\int_\Omega a^{ij}{u_m}_i{u_m}_j-\frac{1}{2}\int_\Omega \frac{d {}a^{ij} }{d {}t}{u_m}_i{u_m}_j:=\frac{1}{2}\frac{d {} }{d {}t}A[u_m;t]-\frac{1}{2}A_1[u_m;t],
$$




$$
|A_1|\le C_1(L,n)\Vert u_m\Vert_{H_0^1(\Omega)}^2,\quad \Vert u_m\Vert_{H_0^1(\Omega)}^2\le C(n)\Vert Du_m\Vert_{L^2(\Omega)}^2\le C(\lambda,n)A[u_m;t].
$$


因此, 整理有


$$
\frac{d {} }{d {}t}\left(\Vert u_m'\Vert_{L^2(\Omega)}^2+A[u_m;t]\right)\le C(L,n)\left(\Vert f(t)\Vert_{L^2(\Omega)}^2+A[u_m;t]+\Vert u_m'\Vert_{L^2(\Omega)}^2\right).
$$


记$\eta(t)=\Vert u_m'(t)\Vert_{L^2(\Omega)}^2+A[u_m,t],$
由Gronwall不等式, 我们有


$$
\eta(t)\le C(T,L,n)(\eta(0)+\Vert f\Vert_{L^2(\Omega_T)}^2),\quad a.e. t\in [0,T].
$$




$$
\eta(t)\ge \Vert u_m'\Vert_{L^2(\Omega)}^2+C(\lambda,n)\Vert u_m\Vert_{H_0^1(\Omega)}^2,\quad \eta(0)\le \Vert h\Vert_{L^2(\Omega)}^2+C(L)\Vert g\Vert_{H_0^1(\Omega)}^2
$$


这样我们就给出了


$$
\sup_{0\le t\le T}\left(\Vert u_m(t)\Vert_{H_0^1(\Omega)}^2+\Vert u_m'(t)\Vert_{L^2(\Omega)}^2\right)\le C(L,n,T)\left(\Vert f\Vert_{L^2(\Omega_T)}^2+\Vert g\Vert_{H_0^1(\Omega)}^2+\Vert h\Vert_{L^2(\Omega)}^2\right)
$$



再估计$u_m''.$ 类似地, 记$v_m=\sum_{k=1}^m(v,w_k)w_k,$ 那么


$$
\left<{}u_m'',v\right>=(u_m'',v)=(u_m'',v_m)=(f,v_m)-B[u_m,v_m;t],
$$




$$
|\left<{}u_m'',v\right>|\le \Vert f\Vert_{L^2}\Vert v_m\Vert_{L^2}+C(n,L)\Vert u_m\Vert_{H_0^1}\Vert v_m\Vert_{H_0^1}\le C(n,L)\left(\Vert f\Vert_{L^2}+\Vert u_m\Vert_{H_0^1}\right)\Vert v\Vert_{H_0^1}.
$$


这就给出了$\Vert u_m''(t)\Vert_{H^{-1}(\Omega)}$的估计.

**定理 2**. *在系数条件满足时, 逼近解$u_m$满足* 



$$
\sup_{0\le t\le T}\left(\Vert u_m\Vert_{H_0^1}+\Vert u_m'\Vert_{L^2}\right)+\Vert u_m''\Vert_{L^2(0,T;H^{-1}(\Omega))}\le C(\Omega,L,T)\left(\Vert f\Vert_{L^2(\Omega_T)}+\Vert g\Vert_{H_0^1}+\Vert h\Vert_{L^2}\right)
$$



这样之后就有弱收敛子列$\{u_m\},$ 且时间导数也收敛, 给出$u,$
且满足相同的能量估计. (操作上, 为了得到$L^\infty$控制,
需要给出$L^p$控制, $p\rightarrow\infty.$)

下面验证$u$是弱解. 方法同理.
考虑$\eta(t)v_N\xrightarrow{L^2(0,T;H_0^1(\Omega))} \eta(t)v,$
代入到逼近解$u_m$对应的方程中. 先令$m\rightarrow\infty,$
再令$N\rightarrow\infty$即可. 初值条件亦然, 取合适的$\eta$即可.

**定理 3**. *在系数条件下, 双曲方程存在弱解$u,$ 为Galerkin逼近解的极限, 且满足能量估计.* 

## 弱解唯一性

**定理 4**. *在前面的系数条件基础上, 若$b^i\in C^1([0,T],L^\infty(\Omega)),$ 则双曲方程解唯一.* 

只需考虑齐次问题. 取弱解$u\in L^2(0,T;H_0^1(\Omega)),$
$u_t\in L^2(\Omega_T),$ $u_{tt}\in L^2(0,T;H^{-1}(\Omega)).$
若$u_t\in L^2(0,T;H_0^1(\Omega)),$ 则取$v=u_t$代入方程即可.
但此时并没有该条件. 注意到,


$$
(u'',w)=\frac{d {} }{d {}t}\left<{}u',w\right>-\left<{}u',w'\right>,
$$


取$w$使得$w'=\pm u,$ $w(T)=0$即可进一步推导. 为此,
$\,\forall\,s\in [0,T],$ 令 
$$
w(t)=\begin{cases}
 0&s\le t\le T\\
 \int_t^s u(\tau)d\tau & 0\le t<s
 \end{cases},
$$
 则$w$满足条件. 代入, 我们有:


$$
\int_0^s \left<{}u'',w\right>+B[u,w;t]dt=0,\quad \int_0^s \left<{}u'',w\right>ds=\int_0^s \left<{}u',u\right>dt=\frac{1}{2}\Vert u(s)\Vert_{L^2(\Omega)}^2,
$$


$$
\begin{aligned}
 \int_0^s B[u,w;t]dt=&-\int_0^sB[w',w;t]dt\\
 =&-\int_0^s \frac{d {} }{d {}t}\int_\Omega \frac{1}{2} a^{ij}w_iw_j+b^iw_iw dxdt\\
 &+\int_0^s\int_\Omega \frac{1}{2}{a^{ij} }'w_iw_j+{b^i}'w_iw+b^iw_iw'-cw'wdxdt\\
 =&\int_\Omega \frac{1}{2}a^{ij}w_iw_j+b^iw_iwdx|_{t=0}+I(w)\\
 \ge &\frac{\lambda}{4}\Vert Dw(0)\Vert^2-C(n,L)\left(\Vert w(0)\Vert_{L^2(\Omega)}+\int_0^s \Vert w(t)\Vert_{H^1(\Omega)}^2+\Vert u(t)\Vert_{L^2(\Omega)}^2dt\right)
 \end{aligned}
$$
 整理得到


$$
\Vert u(s)\Vert^2_{L^2(\Omega)}+\Vert w(0)\Vert_{H_0^1(\Omega)}^2\le C(n,\Omega,L,T)\left(\Vert w(0)\Vert_{L^2(\Omega)}^2+\int_0^s \Vert w(t)\Vert_{H^1(\Omega)}^2+\Vert u(t)\Vert^2_{L^2(\Omega)}dt\right)
$$



接下来希望将其转化为常见的Gronwall不等式.
令$v(t)=\int_0^t u(\tau)d\tau,$ 那么$w(0)=v(s),$ $w(t)=v(s)-v(t),$
$\,\forall\,t\le s.$


$$
\Vert v(s)\Vert_{L^2(\omega)}^2=\int_\Omega \left(\int_0^s u(\tau)d\tau\right)^2dx\le T\int_0^s \Vert u(t)\Vert^2_{L^2(\Omega)}dt,
$$




$$
\int_0^s \Vert w(t)\Vert^2_{H^1}=\int_0^s\Vert v(s)-v(t)\Vert^2_{H^1}\le 2\int_0^s \Vert v(s)\Vert_{H^1}^2+\Vert v(t)\Vert_{H^1}^2\le 2\int_0^s\Vert v(t)\Vert^2_{H^1}dt+2s\Vert v(s)\Vert^2_{H^1}
$$



代入不等式, 我们有$\,\forall\,s\in [0,T],$


$$
\Vert u(s)\Vert^2_{L^2(\Omega)}+(1-2sc)\Vert v(s)\Vert_{H_0^1(\Omega)}^2\le C(n,\Omega,L,T)\left(\int_0^s \Vert u(t)\Vert_{L^2(\Omega)}^2+\Vert v(t)\Vert^2_{H^1(\Omega)}dt\right).
$$



令$T_0=\min\{\frac{1}{4C},T\},$ 那么当$s\in [0,T_0]$时,
记$F(t)=\int_0^t\Vert u(\tau)\Vert^2_{L^2(\Omega)}+\frac{1}{4}\Vert v(\tau)\Vert^2_{H^1(\Omega)}d\tau,$
则


$$
\frac{d {}F(s)}{d {}ds}\le C(\Omega,L,n,T)F(s),\quad \,\forall\,s\in [0,T_0].
$$


由于$F(0)=0,$ 由Gronwanll不等式, $F(s)=0,$ $\,\forall\,s\in [0,T_0],$
因此$u\equiv 0.$ 由分层法我们就知道在$\Omega_T$上均成立.

对于线性方程,
唯一性和解的能量/最大模/Schauder估计就给出了解关于已知数据的稳定性(但关于方程的系数要进一步判断).

## 解的正则性

简单起见, 设方程系数与时间无关.

### 二阶正则性

若$f\in H^1(0,T;L^2(\Omega)),$
则$f_k(t)=\left<{}f,w_k\right>\in H^1(0,T).$
此时$e_l^k=B[w_l,w_k;t]$为常数, $u_m=d_m^kw_k,$ ${d_m^k}''\in H^1(0,T),$
故$u_m'''\in L^2(0,T;H_0^1(\Omega)).$ 记$v_m=u_m',$ 对方程两边求导, 有


$$
\left<{}v_m'',v_m'\right>+B[v_m,v_m';t]=(f',v_m')\le \frac{1}{2}\left(\Vert f'\Vert_{L^2(\Omega)}^2+\Vert v_m'\Vert_{L^2(\Omega)}^2\right)
$$


$$
\begin{aligned}
 B[v_m,v_m';t]&\ge\frac{d {} }{d {}t}A[v_m,v_m;t]-C(L)\left(\Vert v_m\Vert^2_{H_0^1}+\Vert v_m'\Vert_{L^2(\Omega)}\right)\\
 &\ge\frac{d {} }{d {}t}A[v_m,v_m;t]-C(L,n)\left(A(v_m,v_m;t)+\Vert v_m'\Vert_{L^2(\Omega)}\right)
 \end{aligned}
$$
记$F(t)=\frac{1}{2}\Vert v_m'\Vert_{L^2(\Omega)}^2+A(v_m,v_m;t),$
我们就有


$$
F'(t)\le C \left(F(t)+\Vert f'\Vert_{L^2(\Omega)}^2\right),\quad F(t)\le C(L,T,n)\left(\Vert f\Vert^2_{H^1(0,T;L^2(\Omega))}+F(0)\right),\quad a.e.\:t\in [0,T]
$$


接下来计算$F(0).$ 
$$
\begin{aligned}
 \Vert v_m'(0)\Vert^2_{L^2(\Omega)}&=(f(0),u_m''(0))-B[u_m(0),u_m''(0);0]\\
 &\le \varepsilon\Vert u_m''(0)\Vert_{L^2}^2+\frac{1}{4\varepsilon}\Vert f(0)\Vert^2_{L^2(\Omega)}-2A(u_m(0),u_m''(0);0)-\cdots\\
 &\le 3\varepsilon\Vert u_m''(0)\Vert_{L^2(\Omega)}^2-2A(u_m(0),u_m''(0);0)+C(L,\varepsilon)\left(\Vert u_m(0)\Vert_{H_0^1(\Omega)}^2+\Vert f\Vert_{H^1(0,T;L^2(\Omega))}\right)
 \end{aligned}
$$


$$
|A(u_m(0),u_m''(0);0)|\le \varepsilon\Vert u_m''(0)\Vert^2_{L^2(\Omega)}+C(L,\varepsilon)\Vert u_m(0)\Vert_{H^2},\quad \Vert u_m(0)\Vert^2_{H^2(\Omega)}\le C\Vert g\Vert^2_{H^2(\Omega)}
$$


令$\varepsilon\le \frac{1}{16},$ 则有


$$
\Vert v_m'(0)\Vert^2_{L^2(\Omega)}\le C(L,n)\left(\Vert f\Vert^2_{H^1(0,T;L^2(\Omega))}+\Vert g\Vert^2_{H^2(\Omega)}\right)
$$


$F(0)$中还有另一项需要处理:


$$
A(v_m(0),v_m(0);0)=A(h_m,h_m;0)\le C(L)\Vert h\Vert^2_{H_0^1(\Omega)}
$$




$$
F(0)\le C(L,n)\left(\Vert f\Vert^2_{H^1(0,T;L^2(\Omega))}+\Vert g\Vert^2_{H^2(\Omega)}+\Vert h\Vert^2_{H_0^1(\Omega)}\right)
$$


令$m\rightarrow\infty,$ 就给出了


$$
\sup_{0\le t\le T}\left(\Vert u''(t)\Vert_{L^2(\Omega)}+\Vert u'(t)\Vert_{H_0^1(\Omega)}\right)\le C(L,n,T)\left(\Vert f\Vert_{H^1(0,T;L^2(\Omega))}+\Vert g\Vert_{H^2(\Omega)}+\Vert h\Vert_{H_0^1(\Omega)}\right)
$$


由$Lu=f-u_{tt},$ 由椭圆方程正则性, 若$\partial\Omega\in C^2,$
$a^{ij}\in C^1(\overline\Omega),$ 有


$$
\Vert u(t)\Vert_{H^2(\Omega)}\le C(\Omega,L,n)\left(\Vert u(t)\Vert_{L^2(\Omega)}+\Vert f(t)\Vert_{L^2(\Omega)}+\Vert u''(t)\Vert_{L^2(\Omega)}\right).
$$


$u'''$的估计和抛物型方程一样. 综上, 我们有如下定理:

**定理 5**. *设$\Omega\subset \mathbb{R}^n$为有界开集, $L$系数适当, $a^{ij}\in C^1(\overline\Omega),$ $b^i,c\in L^\infty(\Omega),$ $\partial \Omega\in C^2.$ 若$f\in H^1(0,T;L^2(\Omega)),$ $g\in H_0^2(\Omega),$ $h\in H_0^1(\Omega),$ 则$u$满足如下正则性估计:* 

$$
\begin{aligned}
 \sup_{0\le t\le T}\left(\Vert u''(t)\Vert_{L^2(\Omega)}+\Vert u'(t)\Vert_{H_0^1(\Omega)}+\Vert u(t)\Vert_{H^2(\Omega)}\right)&+\Vert u'''\Vert_{L^2(0,T;H^{-1}(\Omega))}\le\\
 C(L,n,T,\Omega)&\left(\Vert f\Vert_{H^1(0,T;L^2(\Omega))}+\Vert g\Vert_{H^2(\Omega)}+\Vert h\Vert_{H_0^1(\Omega)}\right)
 \end{aligned}
$$

### 高阶正则性

同理用归纳法. 对于$v=u_t,$ $v|_{t=0}=h,$
$v_t|_{t=0}=u_{tt}|_{t=0}=f(x,0)-Lg.$
此时结合椭圆方程正则性能给出低阶的正则性估计. 为了进一步往下走, 需要


$$
f(0)-Lg\in H_0^1(\Omega),\quad \frac{d {}f}{d {}t}|_{t=0}-Lh\in L^2(\Omega),
$$


由此需引入相容性条件. 记$g_0=g,g_1=h,$


$$
g_{2k}=\frac{d {}^{2k-2}f}{d {}t^{2k-2} }f|_{t=0}-Lg_{2k-2},\quad g_{2k+1}=\frac{d {}^{2k-1}f}{d {}t^{2k-1} }f|_{t=0}-Lg_{2k-1}
$$


若$g_i\in H_0^1(\Omega),$ $0\le i\le m-1,$ $g_m\in L^2(\Omega),$
则称相容性条件($A_m$)满足. 定理类似, 在此不作陈述.
类似地可以推出条件全部光滑时, 弱解也是光滑解.

文章最后更新于 2022-12-24 09:06:53 
