---
title: 《PDE2》笔记-热方程正则性
date: 2022-12-24 09:06:17
categories: 
- 笔记
- PDE
- PDE2
mathjax: true
---

## 时间一阶正则性

和椭圆型方程类似地, 由于 

$$
Lu=f-u_t\quad in\:\Omega,
$$


当$\partial\Omega\in C^{m+2},$ $a^{i,j}\in C^{m+1},$ $b^i,c\in C^m,$
$f\in H^m$时, 我们希望有


$$
\Vert u\Vert_{H^{m+2} }\le C\left(\Vert f\Vert_{H^m}+\Vert u_t\Vert_{H^m}\right).
$$



由椭圆型方程正则性估计, 在$\partial\Omega\in C^2,$ $a^{ij}\in C^1$时,
我们有


$$
\Vert u\Vert_{H^2}\le C\left(\Vert f\Vert_{L^2}+\Vert u_t\Vert_{L^2}+\Vert u\Vert_{L^2}\right),\quad a.e.\:t.
$$



**定理 1**. *$\Omega\subset \mathbb{R}^n$为有界开集, $\partial \Omega\in C^2$. 在系数满足基本条件使得$u$为热方程弱解时, 若$\varphi\in H_0^1(\Omega),$ $a^{ij}\in L^\infty(0,T;C^1(\overline\Omega))\cap C^1([0,T];L^\infty(\Omega)),$ 则$u\in L^2(0,T;H^2(\Omega))\cap L^\infty(0,T;H_0^1(\Omega)),$ $u_t\in L^2(\Omega_T),$ 有正则性估计* 



$$
\Vert u\Vert_{L^\infty(0,T;H_0^1(\Omega))}+\Vert u_t\Vert_{L^2(\Omega_T)}+\Vert u\Vert_{L^2(0,T;H^2(\Omega))}\le C(L,n,\Omega)\left(\Vert\varphi\Vert_{H^1(\Omega)}+\Vert f\Vert_{L^2(\Omega_T)}\right)
$$



由椭圆型估计, $u$的$H^2$模已有估计, 只需控制其它两项即可.

在热方程弱解中, 取$v=u_m'(t),$


$$
\Vert u_m'(t)\Vert_{L^2}^2+B[u_m,u_m';t]=(f,u_m')\le \frac{1}{2}\left(\Vert f\Vert_{L^2}^2+\Vert u_m'(t)\Vert_{L^2}^2\right).
$$


逐项分析, 我们有


$$
-B[u_m,u_m';t]\le -\frac{1}{2}\frac{d {} }{d {}t}\int_\Omega a^{ij}{u_{m} }_i{u_m}_j+\frac{1}{4}\Vert u_m'\Vert_{L^2}^2+C\Vert u_m\Vert_{H^1}^2.
$$


因此,


$$
\Vert u_m'(t)\Vert_{L^2}^2+\frac{1}{2}\frac{d {} }{d {}t}\int_\Omega a^{ij}{u_m}_i{u_m}_j\le C\left(\Vert f\Vert_{L^2}^2+\Vert u_m\Vert_{H^1}^2\right).
$$


对时间项积分, 应用能量估计得到


$$
\Vert u_m'\Vert_{L^2(\Omega_t)}^2+\int_\Omega a^{ij}{u_m}_i{u_m}_j-\int_\Omega a^{ij}(0){\varphi_m}_i{\varphi_m}_j\le C(L,\Omega)\left(\Vert f\Vert_{L^2(\Omega_T)}^2+\Vert\varphi_m\Vert^2_{L^2(\Omega)}\right).
$$


整理得到


$$
\Vert u_m'\Vert_{L^2(\Omega_T)}+\operatorname{ess}\operatorname{sup}_{t}\Vert u_m\Vert_{H^1}\le C(L,\Omega)\left(\Vert f\Vert_{L^2(\Omega_T)}+\Vert\varphi_m\Vert_{H^1(\Omega)}\right).
$$


令$m\rightarrow\infty$即可得到结论.

## 时间二阶正则性

**定理 2**. *在前定理条件基础上, 若$a^{ij}\in C^1(\overline\Omega_T),$ $b^i,c\in C^1([0,T];L^\infty(\Omega)),$ $\varphi\in H_0^1(\Omega)\cap H^2(\Omega),$ $f\in H^1(0,T;L^2(\Omega))\hookrightarrow C([0,T];L^2(\Omega)),$ 则$u\in L^\infty(0,T;H^2(\Omega)),$ $u_t\in C([0,T];L^2(\Omega))\cap L^2(0,T;H_0^1(\Omega)),$ $u_{tt}\in L^2(0,T;H^{-1}(\Omega)),$ 且* 

$$
\begin{aligned}
 \Vert u\Vert_{L^\infty(0,T;H^2(\Omega))}+\Vert u_t\Vert_{C([0,T];L^2(\Omega))}+&\Vert u_t\Vert_{L^2(0,T;H_0^1(\Omega))}+\Vert u_{tt}\Vert_{L^2(0,T;H^{-1}(\Omega))}\\
 &\le C(L,\Omega,T)\left(\Vert f\Vert_{H^1(0,T;L^2(\Omega))}+\Vert\varphi\Vert_{H^2(\Omega)}\right)
 \end{aligned}
$$

我们分步给出证明.

### 问题约化

首先由椭圆型正则性估计,


$$
\Vert u\Vert_{H^2}\le C\left(\Vert f\Vert_{L^2}+\Vert u_t\Vert_{L^2}+\Vert u\Vert_{L^2}\right),
$$


关于时间取$L^\infty$模即可知原式第一项由后面的项给出控制.
对$u_t$应用Lions定理, 可知给出后两项估计后,
只需考虑$\Vert u_t\Vert_{L^\infty(0,T;L^2)}$即可.
因此我们先给出后两项的控制.

### 方程求导

由于${C_m^k}''=f_k'-(C_m^le_l^k)',$
我们知道$u_m''\in H_0^1(\Omega)$是几乎处处存在的.
将它还原为关于$u_m$的方程, 有:


$$
\left<{}u_m'',v\right>+B[u_m',v;t]=(f',v)-B_{(1)}[u_m,v;t],
$$




$$
B_{(k)}[u,v;t]:=\int_\Omega \frac{d {}^ka^{ij} }{d {}t^k} u_iv_j+\frac{d {}^kb^i}{d {}t^k} u_iv+\frac{d {}^kc}{d {}t^k}uv dx
$$



取$v=u_m'(t),$ 那么由Young不等式, 可以给出


$$
\frac{d {} }{d {}t}\frac{1}{2}\Vert u_m'\Vert_{L^2}^2+B[u_m',u_m';t]\le C(\Vert f'\Vert_{L^2}+\Vert u_m'\Vert_{L^2}^2+\Vert u_m\Vert_{H^1}^2)+\frac{\lambda}{4} \Vert Du_m'\Vert_{L^2}^2
$$


由椭圆型方程能量估计,


$$
B[u_m',u_m';t]\ge \frac{\lambda}{2}\Vert Du_m'\Vert_{L^2}^2-C_1\Vert u_m'\Vert_{L^2(\Omega)}^2
$$


因此, 结合对$\Vert u_m\Vert_{H^1},$
$\Vert u_m'\Vert_{L^2(\Omega_T)}$的已有估计, 应用Gronwall不等式,
积分得到


$$
\operatorname{ess}\operatorname{sup}_{t}\Vert u_m'\Vert_{L^2}^2+\Vert u_m'\Vert_{L^2(0,T;H^1)}^2\le C\left(\Vert f\Vert_{H^1(0,T;L^2)}^2+\Vert\varphi_m\Vert_{H_0^1}^2+\Vert u_m'(0)\Vert_{L^2}^2\right).
$$


考虑$u_m'$在$t=0$时的热方程, 可以进一步给出


$$
\operatorname{ess}\operatorname{sup}_{t}\Vert u_m'\Vert_{L^2}^2+\Vert u_m'\Vert_{L^2(0,T;H^1)}^2\le C\left(\Vert f\Vert_{H^1(0,T;L^2)}^2+\Vert\varphi_m\Vert_{H^2}^2\right)
$$



### 初值$H^2$模控制

我们希望通过$m\rightarrow\infty$直接给出中间两项的估计. 然而,
$\{w_k\}$在$L^2,H_0^1$中是正交基, 但是在$H^2$中不是,
因此最后一项不能直接用收敛性. 我们来证明


$$
\Vert\varphi_m\Vert_{H^2(\Omega)}\le C\Vert\varphi\Vert_{H^2(\Omega)}.
$$



$\varphi_m=\sum_{k=1}^m (\varphi,w_k)w_k,$
取$h_m:=L\varphi_m=\sum_{k=1}^m \lambda_k(\varphi,w_k)w_k.$
以$L=-\Delta$为例, 那么由于$T(L\varphi_m)=0,$ 由Poincaré不等式,


$$
\Vert\varphi_m\Vert_{H^2}\le C\Vert L\varphi_m\Vert_{L^2}=C\Vert h_m\Vert_{L^2}
$$




$$
\Vert h_m\Vert_{L^2}^2=\sum_{k=1}^m (\lambda_kw_k,\varphi)^2=\sum_{k=1}^m(\Delta w_k,\varphi)^2=\sum_{k=1}^m(w_k,\Delta \varphi)^2\le \Vert\Delta \varphi\Vert_{L^2}^2\le \Vert\varphi\Vert_{H^2}^2.
$$


这样就得到了结论.

这样我们就证明了原始命题中中间两项的控制

### 时间二阶项估计

希望证明


$$
\Vert{u_m}_{tt}\Vert_{L^2(0,T;H^{-1}(\Omega))}\le C[\Vert f\Vert_{H^1(0,T;L^2(\Omega))+\Vert\varphi\Vert_{H^2} }].
$$


这样$\{ {u_m}_{tt}\}$有弱收敛子列. 由之前证明同样的方法, 它就是$u_{tt},$
且有同样的控制.

$\,\forall\,\psi\in H_0^1(\Omega),$ $\psi_m:=\sum_{k=1}^m(\psi,w_k)w_k.$
$$
\begin{aligned}
 |\left<{}{u_m}_{tt},\psi\right>|=|({u_m}_{tt},\psi_m)|&\le |(f_t,\psi_m)|+|B[u_m',\psi_m,t]|+|B_{(1)}[u_m,\psi_m;t]|\\
 &\le \Vert f'\Vert_{L^2}\Vert\psi_m\Vert_{L^2}+C\Vert u_m'\Vert_{H^1}\Vert\psi_m\Vert_{H^1}\\
 &\le C(\Vert f'\Vert_{L^2}+\Vert u_m'\Vert_{H^1})\Vert\psi\Vert_{H^1} 
 \end{aligned}
$$

由此得到$H^{-1}$模的估计. 对时间取$L^2$积分,
由$u_m'$已有的估计即可得到结论.

## 高阶正则性

对方程求$n$阶导, 记$u_n=\frac{d {}^nu}{d {}t^n},$ 有: 
$$
\begin{cases}
 u_{n}'=\frac{d {}^n}{d {}t^n}f-\frac{d {}^n}{d {}t^n}(Lu)\\
 u_n|_{t=0}=\frac{d {}^{n-1} }{d {}t^{n-1} }f(0)-\frac{d {}^{n-1} }{d {}t^{n-1} }(Lu)|_{t=0}=:\varphi_n
 \end{cases}
$$
 回忆对方程求解必须有$\varphi\in H_0^1,$
这样才能利用正交基$\{w_k\}$给出收敛性.
但一般的$\varphi_n$不见得有这个性质. 因此我们需要施加相容性条件:

归纳地, 对于$\varphi_0:=\varphi,$


$$
\varphi_j:=\frac{d {}^{j-1} }{d {}t^{j-1} }f(0)-\sum_{k=0}^{j-1}\binom{j-1}{k}L^k\varphi_{j-1-k},
$$


要求全部的$\varphi_j\in H_0^1(\Omega),$ $j=0,\cdots,n.$

**定理 3**. *设$\Omega\subset \mathbb{R}^n$为有界开集, 整数$m\ge 0.$ $\partial\Omega\in C^{2(m+1)}.$ $a^{ij},b^i,c\in C^{2m+1}(\overline\Omega_T),$ $\varphi\in H^{2m+1}(\Omega),$ $\frac{d {}^kf}{d {}t^k}\in L^2(0,T;H^{2m-2k}(\Omega)),$ $k\le m.$ 若方程满足$m$阶相容性条件, 则存在弱解$u,$ 满足$\frac{d {}^ku}{d {}t^k}\in L^2(0,T;H^{2(m+1)-2k}),$ $k\le m+1,$ 且* 



$$
\sum_{k=0}^{m+1}\left\Vert\frac{d {}^ku}{d {}t^k}\right\Vert_{L^2(0,T;H^{2(m+1)-2k}(\Omega))}\le C(\Omega,m,n,L,T)\left(\Vert\varphi\Vert_{H^{2m+1}(\Omega)}+\sum_{k=0}^m \left\Vert\frac{d {}^kf}{d {}t^k}\right\Vert_{L^2(0,T;H^{2m-2k}(\Omega))}\right)
$$



采用归纳法. $m=0$时已有结论. 考虑证明$m+1$时的情形.
记$\widetilde u=u_t,$ $\widetilde f=f_t=L^{(1)}u,$
$\widetilde\varphi=\varphi_1=f(0)-L\varphi_0.$ 那么考虑 
$$
\begin{cases}
 \widetilde{u}_t+L\widetilde u=\widetilde f\\
 \widetilde u|_{t=0}=\widetilde\varphi
 \end{cases}
$$
 就给出了$\widetilde u=u_t$的正则性估计.
只需再估计$\Vert u\Vert_{L^1(0,T;H^{2(m+2)})}$即可, 但这由$Lu=f-u_t,$
通过椭圆型方程估计立即得到.

**推论 4**. *设$\Omega$为有界光滑区域, $a^{ij},b^i,c,f\in C^\infty(\overline\Omega_T),$ $\varphi\in C^\infty(\overline\Omega),$ 满足无穷阶相容性条件, 那么$u\in C^\infty(\overline\Omega_T)$为光滑解.* 

由Lions定理与Sobolev嵌入定理, 分别得到时间和空间上的光滑性即可.

文章最后更新于 2022-12-24 09:06:18 
