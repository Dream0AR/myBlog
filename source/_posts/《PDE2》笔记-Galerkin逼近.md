---
title: 《PDE2》笔记-Galerkin逼近
date: 2022-12-08 10:24:07
categories: 
- 笔记
- PDE
- PDE2
mathjax: true
---

## 动机

考虑问题 
$$
\left\{\begin{aligned}
 u_t-\Delta u=0&\quad in\:\Omega_T\\
 u=0&\quad on\:\partial\Omega\\
 u|_{t=0}=h&\quad in\:\Omega 
 \end{aligned}\right.
$$

一种很经典的处理方法是分离变量法, 如果有$u(x,t)=w(x)H(t),$ 那么


$$
H_tw-\Delta wH=0,\quad w|_{\partial\Omega}=0.
$$

 进而,


$$
\frac{\Delta w}{w}=\frac{H_t}{H}=-\lambda,
$$


此时$w$为$\Delta$的特征函数.
取$\lambda_1\le \lambda_2\le\cdots\rightarrow \infty,$
那么$\{w_k\}_{k=1}^\infty$构成一组正交基.
我们希望通过$u_m=\sum_{k=1}^m C_m^k(t) w_k\rightarrow u$给出弱解.

## Galerkin逼近

可以取到$\{w_k\}\subset C^\infty(\Omega)\cap H_0^1(\Omega)\cap H^2(\Omega),$
使得$\{w_k\}$为$L^2(\Omega)$标准正交基, $H_0^1(\Omega)$正交基.

考虑条件


$$
a^{ij},b^i,c\in L^\infty(\Omega_T),\quad f\in L^2(\Omega_T),\quad h\in L^2(\Omega).
$$


$\,\forall\,m\ge 1,$ 取$u_m=\sum_{k=1}^m C_m^k(t)w_k(x),$
使得$\,\forall\,v\in L(w_1,\cdots,w_m),$ 
$$
\begin{cases}
 \left<{}u_m'(t),v\right>+B_L[u_m,v,t]=(f,v),&a.e.\,t\in (0,T)\\
 u_m|_{t=0}=h_m:=\sum_{k=1}^m (h,w_k)w_k(x)
 \end{cases}
$$
 $h_m\rightarrow h=\sum_{k=1}^\infty (h,w_k)w_k.$
将$u_m$展开, 记$e_l^k=B[w_l,w_k;t],$ 我们只需解ODE方程组 
$$
\begin{cases}
 {C_m^k}'(t)+C_m^le_l^k=(f,w_k)\\
 C_m^k(0)=(h,w_k)
 \end{cases}
$$
注意到$(f,w_k)(t)=\int_\Omega f(x,t)w_k(x)dx\in L^2(0,T),$
$e_l^k(t)\in L^\infty(0,T),$ 由ODE理论, 我们有如下引理:

**引理 1**. *上述ODE方程组在$W^{1,2}(0,T)$中解$\{C_m^k\}$存在唯一. 因此原方程有$W^{1,2}(0,T;H_0^1(\Omega))$中的解$u_m.$* 

在$f$关于时间$L^\infty$有界时, 方程在$W^{1,\infty}(0,\infty)$中也有解,
此时$u_m$还可以取在 $W^{1,\infty}(0,T;H_0^1(\Omega))$ 中.

## 能量估计

### 零阶项估计

为了说明收敛性, 我们需要给出能量的有界性. 在方程组中取$v=u_m,$ 那么


$$
\frac{1}{2}\frac{d {} }{d {}t}\Vert u_m(t)\Vert_{L^2(\Omega)}^2+B[u_m,u_m,t]=(f,u_m)\le \frac{\Vert f(t)\Vert_{L^2(\Omega)}^2+\Vert u_m(t)\Vert_{L^2(\Omega)}^2}{2}.
$$


由椭圆型方程能量估计,


$$
B[u_m,u_m;t]\ge \frac{\lambda}{2}\Vert Du_m\Vert_{L^2}^2-\mu(L,\Omega)\Vert u_m\Vert_{L^2}^2.
$$


因此,


$$
\frac{d {} }{d {}t}\Vert u_m\Vert_{L^2}^2+\lambda\Vert u_m\Vert_{H^1}^2\le C(\Vert f\Vert_{L^2}^2+\Vert u_m\Vert_{L^2}^2).
$$



对于


$$
\frac{d {}F}{d {}t}\le CF(t)+g(t),\quad \frac{d {} }{d {}t}(e^{-Ct}F(t))\le e^{-Ct}g(t),
$$




$$
e^{-Ct}F(t)\le F(0)+\int_0^te^{-cs}g(s)ds,\quad F(t)\le e^{Ct}F(0)+\int_0^te^{C(t-s)}g(s)ds.
$$


这样我们就得到了Gronwall不等式. 进一步有


$$
F(t)\le C(T)\left(F(0)+\int_0^Tg(s)ds\right).
$$

 若$g$非负非减,
我们也能给出更精确的估计.

于是由原不等式, 我们得到


$$
\Vert u_m(t)\Vert_{L^2(\Omega)}^2\le C(T)\left(\Vert\varphi_m\Vert_{L^2(\Omega)}^2+\Vert f\Vert_{L^2(\Omega_T)}^2\right).
$$


进一步有


$$
\Vert u_m(t)\Vert_{L^2(\Omega)}^2+\int_0^t\Vert u_m(s)\Vert_{H^1}^2ds\le C(T)\left(\Vert\varphi_m\Vert_{L^2(\Omega)}^2+\Vert f\Vert_{L^2(\Omega_T)}^2\right).
$$


于是$u_m\in L^2(0,T;H_0^1(\Omega)),$
事实上也在$L^\infty(0,T;H_0^1(\Omega))$中.
接下来需要说明的是$u_m'\in L^2(0,T;H^{-1}(\Omega)).$

### 导数项估计

$\,\forall\,v\in H_0^1(\Omega),$ 取$v_m=\sum_{k=1}^m (v,w_k)w_k.$
对几乎处处的$t\in (0,T),$ 有 
$$
\begin{aligned}
 |\left<{}u_m',v\right>|&=|(u_m',v_m)|=|(f,v_m)-B[u_m,v_m;t]|\\
 &\le \Vert f\Vert_{L^2}\Vert v_m\Vert_{L^2}+C\Vert u_m\Vert_{H^1}\Vert v_m\Vert_{H^1}\le (\Vert f\Vert_{L^2}+C\Vert u_m\Vert_{H^1})\Vert v\Vert_{H^1}
 \end{aligned}
$$
 因此,


$$
\Vert u_m'(t)\Vert_{H^{-1}(\Omega)}\le \Vert f\Vert_{L^2}+C\Vert u_m\Vert_{H^1}
$$



**定理 2**. *在合适的系数条件下, 逼近解$u_m\in C([0,T];L^2(\Omega))$满足* 



$$
\max_{[0,T]}\Vert u_m\Vert_{L^2}+\Vert u_m\Vert_{L^2(0,T;H_0^1)}+\Vert u_m'\Vert_{L^2(0,T;H^{-1})}\le C(T,L,\Omega,n)\left(\Vert f\Vert_{L^2(\Omega_T)}+\Vert\varphi_m\Vert_{L^2(\Omega)}\right).
$$



当然可将$\varphi_m$换为$\varphi$给出一致的上界.

## 弱解存在性

分为三步进行:

### 弱收敛

由于$\Vert u_m\Vert_{L^2(0,T;H_0^1)},$
$\Vert u_m'\Vert_{L^2(0,T;H^{-1})}$一致有界, 我们可以取到弱收敛子列,
分别在各自空间中弱收敛到$u,v.$ 下证$u'=v\in H^{-1},$ $a.e.$
$t\in [0,T].$

结论等价于


$$
\frac{d {} }{d {}t}\left<{}u(t),\varphi\right>=\left<{}u'(t),\varphi\right>=\left<{}v,\varphi\right>,\quad \,\forall\,\varphi\in H_0^1(\Omega),\quad a.e.\:t\in [0,T].
$$


由关于时间弱导数定义, 这又等价于$\,\forall\,\eta\in C_0^\infty(0,T),$


$$
-\int_0^T\left<{}u(t),\varphi\right>\eta'=\int_0^T\left<{}v,\varphi\right>\eta.
$$



而$\,\forall\,\varphi\in H_0^1(\Omega),$


$$
\int_0^T\left<{}v,\varphi\right>\eta dt=\lim_{m\rightarrow\infty}\int_0^T(u_m',\varphi)\eta dt=-\lim_{m\rightarrow\infty}\int_0^T(u_m,\varphi)\eta' dt=-\int_0^T(u,\varphi)\eta'dt.
$$


这就给出了$u'=v$.

### 热方程弱解

接下来验证$u$确实是热方程的弱解. 取$v_N:=\sum_{k=1}^N(v,w_k)w_k.$
若$m>N,$ 则有


$$
\int_0^T(u_m',v_N)\eta dt=\int_0^T\left((f,v_N)-B[u_m,v_N;t]\right)\eta dt.
$$


令$m\rightarrow\infty,$ 再令$N\rightarrow\infty,$ 即有


$$
\int_0^T(u',v)\eta dt=\int_0^T\left((f,v)-B[u,v;t]\right)\eta dt,\quad \,\forall\,\eta\in C[0,T].
$$


这就说明了$u$为热方程弱解.

### 初值条件

最后还需验证满足初值条件. 由于取$u_m$时考虑了初值条件,
取$\eta\in C^1[0,T],$ $\eta(T)=0,$ $\eta(0)=1.$ 对于$m>N,$ 我们有


$$
\int_0^T(u_m',v_N)\eta dt=(u_m,v_N)\eta|^{T}_{t=0}-\int_0^T(u_m,v_N)\eta'dt=-(\varphi_m,v_N)-\int_0^T(u_m,v_N)\eta'dt.
$$


令$m\rightarrow\infty,$ 再令$N\rightarrow\infty,$ 我们有:


$$
\int_0^T(u',v)\eta dt=-(\varphi,v)-\int_0^T(u,v)\eta'dt.
$$



另一方面, 由Lions定理, $u\in C([0,T],L^2),$
在$L^2$意义下$u(0)=\lim_{t\rightarrow 0+}u(t).$ 因此和前面一样的有


$$
\int_0^T(u',v)\eta dt=(u,v)\eta|^{T}_{t=0}-\int_0^T(u,v)\eta'dt=-(u(0),v)-\int_0^T(u,v)\eta'dt
$$



于是$u$也满足初值条件. 由范数的弱sharp连续性, 我们有:

**定理 3**. *在热方程系数满足适当条件时, 热方程存在弱解, 且满足能量估计:* 



$$
\max_{[0,T]}\Vert u\Vert_{L^2}+\Vert u\Vert_{L^2(0,T;H_0^1)}+\Vert u'\Vert_{L^2(0,T;H^{-1})}\le C(T,L,\Omega,n)\left(\Vert f\Vert_{L^2(\Omega_T)}+\Vert\varphi\Vert_{L^2(\Omega)}\right).
$$



## 弱解唯一性

前面的能量估计只能说明通过Galerkin方法得到的弱解唯一,
但不见得所有弱解都是通过Galerkin方法得到的, 因此我们仍需寻求另外的做法.
另外证明了唯一性之后,
我们便说明了唯一的弱解一定可以通过Galerkin方法逼近得到.
这样任意的弱解也就都适用前面得到的能量估计了.

只需考虑$f\equiv 0,$ $\varphi\equiv 0$的情形. $u(t)\in H_0^1(\Omega),$
$a.e.$ $t.$ 只需考虑如下方程是否只有零解.


$$
\left<{}u_t,u\right>+B[u,u;t]=0.
$$

 和前面一样的, 我们有


$$
\frac{d {} }{d {}t}\Vert u(t)\Vert^2_{L^2}=\left<{}u_t,u\right>,\quad B[u,u;t]\ge \frac{\lambda}{2}\Vert Du\Vert_{L^2}^2-\mu\Vert u\Vert_{L^2}^2.
$$


因此


$$
\frac{d {} }{d {}t}\Vert u(t)\Vert_{L^2}^2=-B\le \mu\Vert u\Vert_{L^2}^2.
$$


这样由基本的ODE知识, 就有


$$
\Vert u(0)\Vert_{L^2}^2=0\quad\Rightarrow\quad \Vert u(t)\Vert_{L^2}^2\equiv 0\quad\Rightarrow\quad u\equiv 0\quad in\:\Omega_T.
$$



这样我们就证明了弱解的唯一性, 也证明了弱解总可由Galerkin逼近得到.

文章最后更新于 2022-12-08 10:24:09 
