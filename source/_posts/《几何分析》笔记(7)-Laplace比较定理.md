---
title: 《几何分析》笔记(7)-Laplace比较定理
date: 2022-10-03 22:26:26
categories: 
- 笔记
- 几何
- 几何分析
mathjax: true
---

## 准备工作

$r(x)=d(p,x)$是$M$上的Lipschitz函数, 进一步它在$W^{1,p}_{loc}(M)$中.
我们希望推导得到:


$$
-\int_M\nabla_g r\nabla_g \varphi\le \int_M (n-1)\frac{sn_k'(r)}{sn_k(r)}\varphi dV_g,\quad \,\forall\,\varphi\ge 0,\varphi\in \mathscr{D}(M).
$$



对于割迹$\operatorname{Cut}=N_p\cup A_p,$ $\,\forall\,p>n-2,$
$\,\exists\,r_k,r_k'\rightarrow 0,$
$\,\exists\,\phi_k\in W^{1,n-p}\cap C^0,$ 满足


$$
\phi_k|_{B_{r_k}^g(A_p)^c}\equiv 0,\quad \phi_k|_{B_{r_k}^g(A_p)}\equiv 1,
$$


且$\int |\nabla \phi_k|^{n-p}\rightarrow 0.$

## 分部积分

首先考虑将不等式左侧写成更方便的形式.



$$
-\int_M\nabla_g r\nabla_g\varphi dV_g=\lim_{k\rightarrow +\infty} -\int_M \nabla_g r\nabla_g(1-\varphi_k)\varphi dV_g.
$$


记后面的积分为$I,$ 则 
$$
\begin{aligned}
 I&= -\int_{\widehat{C}_p\cap \widehat{S}_p} \nabla_{\widehat g}r\nabla_{\widehat g}(1-\phi_k)\varphi dV_{\widehat{g} }\\
 &=\int_{\widehat{S}_p}\Delta_{\widehat g}r(1-\phi_k)\varphi-\int_{ {\widehat N}_p}\frac{\partial {}r}{\partial {}n}(1-\phi_k)\varphi\\
 &=\int_M(\Delta_g r)(1-\phi_k)\varphi-\int_{N_p}J(x)(1-\phi_k)\varphi\\
 &\rightarrow \int_{S_p}(\Delta_g r)\varphi dV_g-\int_{N_p }J(x)\varphi.
 \end{aligned}
$$



$$
J(x):=n_1\cdot \gamma_1'+n_2\cdot\gamma_2'\ge 0.
$$



那么$\,\forall\,\varphi\in \mathscr{D}(M\setminus\{p\}),$


$$
-\int_M\nabla_gr\nabla_g\varphi dV_g=\int_{S_p}\Delta_gr\varphi dV_g-\int_{N_p} J(x)\varphi(x)d\mathcal{H}^{n-1}.
$$



事实上可以取$\varphi\in \mathscr{D}(M).$ 考虑$\eta=\begin{cases}
 1, &t>2\\
 \in[0,1], &1\le t\le 2\\
 0, &t<1
 \end{cases},$
$\eta_\varepsilon=\eta(d(x,p)\varepsilon^{-1}),$
$\varepsilon<\operatorname{Inj}(p).$


$$
|\nabla_g\eta_\varepsilon|=|\eta'| \frac{|\nabla_g r|}{\varepsilon}\le \frac{\Vert\eta'\Vert_{C_0} }{\varepsilon},\quad \eta_\varepsilon\varphi\in \mathscr{D}(M\setminus\{p\}).
$$



那么代入$\eta_\varepsilon\varphi,$
令$\varepsilon\rightarrow 0$即可得到结论.
也就是$\varphi$可以在$\mathscr{D}(M)$中选取.

## 弱意义

由上面证得的公式, 

$$
\Delta_g r=(\Delta_g r)\chi_{S_p}-\mu,
$$


$\mu$为一个Radon测度, 可写为$\mu=J(x)\mathcal{H}^{n-1}|_{N_p},$ 即


$$
\int_M\varphi d\mu=\int_{N_p}\varphi Jd\mathcal{H}^{n-1}
$$

 由$J\ge 0,$
我们就立即得到了前面的弱意义下(在函数空间$\mathscr{D}_+(M)$上)的Laplace比较定理.

## 闸函数

在闸函数意义下也有相应的Laplace比较定理.

回忆对于有界开集$\Omega,$ $p\in \Omega,$ $f\in C^2(\Omega).$
若$f(p)=\min_\Omega f,$ 则$\Delta_g f(p)\ge 0.$
那么若$\,\exists\,\varphi\in C^2(\Omega),$ $\varphi\ge f,$
$\varphi(p)=f(p),$ 则$\varphi(p)-f(p)=\min_\Omega(\varphi-f),$
从而$\Delta \varphi(p)\ge \Delta f(p).$

**定义 1**. *设$f$在$p$点附近连续. 称$\varphi$是$f$在$p$处的上闸函数, 若$\varphi\ge f,$ $\varphi=f(p).$ 定义闸函数意义下$\Delta f(p)\le C$指$\,\forall\,\varepsilon>0,$ $\,\exists\,$上闸函数$\varphi,$ 使得$\Delta \varphi\le C+\varepsilon.$* 

类似地, 可以定义下闸函数. 若上下闸函数对同一常数$C$同时存在,
则可定义$\Delta f(p)=C.$ 接下来, 我们证明在闸函数意义下,


$$
\Delta r\le (n-1)\frac{sn_k'(r)}{sn_k(r)}.
$$



对$x\in M\setminus\{p\},$ 取$\gamma$为连接$p$到$x$的线段.
取$x_\varepsilon=\gamma(\varepsilon).$
定义$r_\varepsilon(x):=d(x,x_\varepsilon)+\varepsilon\ge d(x,p).$
容易证明$x\in S_{x_\varepsilon},$ 因此$r(x)=r_\varepsilon(x).$
而在$\operatorname{Ric}\ge (n-1)K$的条件下,


$$
\Delta_g r_\varepsilon=\Delta_g d(x,x_\varepsilon)\le (n-1)\frac{sn_k'}{sn_k}(d(x,x_\varepsilon)),
$$



这就说明了在闸意义下, $\Delta_gr\le (n-1)\frac{sn_k'}{sn_k}(r).$

文章最后更新于 2022-10-03 23:21:28 
