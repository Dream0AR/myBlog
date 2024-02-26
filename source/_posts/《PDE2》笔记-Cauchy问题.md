---
title: 《PDE2》笔记-Cauchy问题
date: 2022-12-24 09:06:41
categories: 
- 笔记
- PDE
- PDE2
mathjax: true
---

## 非散度型方程

记$\Omega_T=\Omega\times(0,T],$
抛物边界$\partial_p\Omega=\overline\Omega_T\setminus \Omega_T.$
考虑方程$u_t+Lu=f,$ $Lu=-a^{ij}u_{ij}+b^iu_i+cu.$
要求$[a^{ij}]$在$\Omega_T$内半正定.

设$u\in C^{2,1}(\Omega_T):=\{u(x,t)\in C^2_x(\Omega),C^1_t\in (0,T]\}.$

**定理 1** (弱极值原理). *设$\Omega$为有界开集, $a^{ij},b^i,c\in \Omega_T$满足适当光滑性条件, $u\in C^{2,1}(\Omega_T)\cap C(\overline\Omega_T),$ $c\ge 0,$ 则$u_t+Lu\le 0$可以推出$\max_{\overline\Omega_T}u\le \sup_{\partial_p\Omega_T}u^+.$ 取负可以得到最小值的控制.* 

反证法, 假设有


$$
\max_{\overline\Omega_T}=u(x_0,t_0)>\sup_{\partial_p\Omega_T}u^+\ge 0.
$$


取$v_\varepsilon=u-\varepsilon t,$ 只要$\varepsilon$充分小,
那么$v_\varepsilon$仍在内部取到非负最大值.

因此在最大值点$(x_\varepsilon,t_\varepsilon),$ $Dv_{\varepsilon}=0,$
$D^2v_\varepsilon\le 0,$ $v_{\varepsilon}'\ge 0.$
将$L$展开即可得到$v_{\varepsilon}'+Lv_\varepsilon\ge 0.$
(利用$c,v_\varepsilon\ge 0.$)

另一方面,


$$
0\le v_\epsilon'+Lv_\varepsilon=u_t+Lu-\varepsilon-c\varepsilon t\le -\varepsilon.
$$


矛盾, 因此$u$非负最大值在抛物边界上取到.

当$c\equiv 0$时, 可忽略正部的要求; 当$c\ge \mu$为常数时,
可取$v=e^{\mu t}u,$ 那么 

$$
v_t+(L-\mu)v=e^{\mu t}(u_t+Lu).
$$

 因此,


$$
u_t+Lu\le 0\Rightarrow v_t+\widehat Lv\le 0\Rightarrow \max_{\overline\Omega_T}e^{\mu t}u\le \sup_{\partial_p\Omega_T}(e^{\mu t}u)^{+}.
$$



**定理 2**. *设$\Omega\subset \mathbb{R}^n$为有界开集, $[a^{ij}]\ge 0,$ $c\ge \mu,$ 那么热方程初边值问题在$C(\overline\Omega_T)\cap C^{2,1}(\Omega_T)$上有唯一解.* 

## 最大模估计

考虑Cauchy问题: 
$$
\begin{cases}
 u_t+Lu=f&in\:Q_T:=\mathbb{R}^n\times (0,T]\\
 u|_{t=0}=\psi&in\:\mathbb{R}^n
 \end{cases}
$$
 设系数满足: $\,\exists\,\alpha_1\in [0,2),$
$\alpha_2\in [0,1),$ $\mu_0\in \mathbb{R},$ $\mu_1\ge 0,$ 使得


$$
c\ge \mu_0,\quad\sum_{i,j=1}^n |a^{ij}|\le \mu_1(|x|^{\alpha_1}+1),\quad \sum_{i=1}^n |b^i|\le \mu_1(|x|^{\alpha_2}+1).
$$



**定理 3**. *设$u\in C(\overline Q_T)\cap C^{2,1}(Q_T)$为Cauchy问题解, $\lim\limits_{r\rightarrow\infty} \frac{M(r)}{r^2}=0,$ $M(r):=\sup\limits_{\begin{subarray}{c}  |x|=r\\  0<t<T  \end{subarray} }|u(t)|,$ 则* 



$$
\sup_{Q_T}|u|\le e^{(-\mu_0)^+T}[T\Vert f\Vert_{L^\infty(Q_T)}+\Vert\psi\Vert_{L^\infty(\mathbb{R}^n)}].
$$



### $\mu_0>0$

先来讨论$\mu_0>0$的情形, 此时只需证明 

$$
\pm u+At+B\ge 0.
$$



取$v_r(x,t)=\frac{M(r)}{r^2}[|x|^2+mt],$ $m\ge 0$待定,
$w=\pm u+At+B+v_r.$ 我们希望通过证明$w\ge 0,$
令$r\rightarrow\infty$给出原不等式. 我们利用弱极值原理给出证明,
因此考虑$w_t+Lw\ge 0.$



$$
w_t+Lw=\pm f+A+c(At+B)+\frac{M(r)}{r^2}[m-2a^{ij}\delta_{ij}+2b^ix_i+c|x|^2+cmt]
$$



注意到$|x|^{\alpha_1}\le \varepsilon|x|^2+\frac{1}{4\varepsilon},$
那么由系数条件, 可以令$\varepsilon$充分小,
使得$a^{ij}$项被$c|x|^2,m$控制. $b^i$项同理.
因此当$m=C(\mu_0,\alpha_1,\alpha_2,\mu_1)>>1$时, $Q_T$上有$w_t+Lw\ge 0.$

由于$w|_{\partial B_r\times (0,t]}\ge (M(r)\pm u)|_{\partial B_r\times (0,t]}\ge 0,$
$w|_{t=0}\ge B\pm \psi\ge 0,$ 由弱极值原理我们有$w\ge 0,$
在$\overline B_r(0)\times [0,t]$上, 即 

$$
|u(x,t)|\le At+B+v_r(x,t).
$$



那么任意固定一个$(x_0,t_0)\in Q_T,$ $\,\forall\,r>|x_0|,$ 有


$$
|u(x_0,t_0)|\le AT+B+v_r(x_0,t_0)\rightarrow AT+B.
$$

 这样就给出了结论.

### $\mu_0\le 0$

作$v(x,t)=u(x,t)e^{(\mu_0-\delta)t},$ $\delta>0.$
那么定义$\widehat L=L-(\mu_0-\delta),$ $\widehat c\ge \delta>0.$
我们有热方程 

$$
v_t+\widehat Lv=\widehat f:=fe^{(\mu_0-\delta)t}.
$$


此时对$v$就可以应用得到的结果, 给出


$$
|v|\le \widehat AT+B,\quad |u|\le e^{-(\mu_0-\delta)t}[T\Vert e^{(\mu_0-\delta)t}f\Vert_{L^\infty(Q_T)}+\Vert\psi\Vert_{L^\infty(\mathbb{R}^n)}].
$$


令$\delta\rightarrow 0+$就给出了结论. 定理证毕.

一般的, 可以要求$M(r)=o(r^\alpha),$ 同时调整$\alpha_1,\alpha_2$的范围.

对于有界区域问题, 我们有

**定理 4**. *设$\Omega$为有界开集, $u\in C^{2,1}(\Omega_T)\cap C(\overline\Omega_T)$为热方程初边值问题的解, 若$[a^{ij}]$对称半正定, 则* 



$$
\sup_{\Omega_T}|u|\le e^{(-\mu_0)^+T}[T\Vert f\Vert_{L^\infty(\Omega_T)}+\Vert g\Vert_{L^\infty(\partial_p\Omega_T)}].
$$



由此立即得到热方程初边值问题解的唯一性.

## Cauchy问题唯一性

Cauchy问题的唯一性要做很多要求, 如通过前面的估计, 我们有:

**定理 5**. *在最大模估计条件基础上, Cauchy方程至多只有一个由$r^\alpha$控制(多项式增长)的$C^{2,1}(\Omega_T)\cap C(\overline\Omega_T)$中的解.* 

接下来, 我们讨论在一种超指数增长控制下的解的唯一性. 设系数满足


$$
\sum|a^{ij}|+\sum |b^i|+|c|\le m,\quad \,\forall\,(x,t)\in Q_T,
$$




$$
E(Q_T):=\{u\in C(\overline Q_T):\,\exists\,k>1,\text{\,s.t.\,}|u|\le ke^{k|x|^2},\:\,\forall\,(x,t)\in Q_T\}.
$$



**定理 6**. *在$[a_{ij}]$半正定且系数满足如上条件下, Cauchy问题在$C^{2,1}(Q_T)\cap E(Q_T)$中的解唯一.* 

只需讨论$f=0,\psi=0$的情况. 我们希望构造$w_t+Lw\ge 0,$
然后令$v=\varepsilon w\pm u.$ 证明$v_t+Lv\ge 0$推出$v\ge 0.$
这样$|u|\le \varepsilon w,$ 令$\varepsilon\rightarrow 0$即可.
采用分层法解决. 断言存在$T_0=C(m,n,T)>0,$ 问题在$Q_{T_0}$内解唯一.

记$\widehat k=k+1.$
$w(x,t):=(\widehat k^2\mu t+\widehat k)e^{(\widehat k^2\mu t+\widehat k)|x|^2}.$
$\mu>0$待定. 计算:


$$
w_t=(\widehat k^2\mu+\widehat k^2\mu|x|^2 (\widehat k^2\mu t+\widehat k))e^{(\widehat k^2\mu t+\widehat k)|x|^2}
$$




$$
Lw=(\widehat k^2\mu t+\widehat k)e^{(\widehat k^2\mu t+\widehat k)|x|^2}(-2a_{ij}(\delta^{ij}(\widehat k^2\mu t+\widehat k)+x_ix_j(\widehat k^2\mu t+\widehat k)^2)+2b^ix_i(\widehat k^2\mu t+\widehat k)+c)
$$


取$T_0\le \min\{T,\frac{1}{\mu \widehat k}\},$
则$\,\forall\,t\in [0,T_0],$


$$
w_t\ge e^{(\widehat k^2\mu t+\widehat k)|x|^2}(\widehat k^2\mu +\widehat k^3\mu |x|^2),
$$




$$
|Lw|\le C(n,m)e^{(\widehat k^2\mu t+\widehat k)|x|^2}(\widehat k^2+\widehat k^3|x|^2).
$$


令$\mu\ge 2C$即有$w_t+Lw>0.$

令$v=\varepsilon w\pm u,$ 取$r$使得$\varepsilon e^{r^2}=1.$
当$\varepsilon\rightarrow 0$时,
$r_\varepsilon=\sqrt{|\log \varepsilon|}\rightarrow\infty.$ 记


$$
Q_{r,T_0}=\{|x|<r,0<t\le T_0\}.
$$

 当$|x|=r$时,


$$
\varepsilon w\ge \varepsilon\widehat k e^{\widehat k r^2}\ge ke^{kr^2}\ge \pm u.
$$


因此由极值原理, $Q_{r,T_0}$上恒有$v\ge 0,$ 即$|u|\le \varepsilon w.$
$\,\forall\,(x_0,t_0)\in Q_{T_0},$ 总有充分小的$\varepsilon_0,$
使得$\,\forall\,\varepsilon\in (0,\varepsilon_0),$
$|x_0|<r_\varepsilon,$
因此$|u(x_0,t_0)|\le \varepsilon w(x_0,t_0)\rightarrow 0,$
由$(x_0,t_0)$任意性, $u\equiv 0.$

我们只证明了$Q_{T_0}$上的唯一性. 但从$t=T_0$平面出发,
我们可得到$Q_{2T_0}$上的唯一性. 逐层归纳,
我们便得到了$Q_T$上问题的唯一性.

**定理 7**. *在上述定理基础上, 有最大模估计* 



$$
\Vert u\Vert_{L^\infty(Q_T)}\le C(T,n,m,k)[\Vert f\Vert_{L^\infty(Q_T)}T+\Vert\psi\Vert_{L^\infty(\mathbb{R}^n)}].
$$



文章最后更新于 2022-12-24 09:06:43 
