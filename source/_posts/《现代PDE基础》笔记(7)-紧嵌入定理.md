---
title: 《现代PDE基础》笔记(7)-紧嵌入定理
date: 2021-11-18 20:12:52
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

紧嵌入定理
----------

下面证明嵌入

$$\Vert f\Vert_{L^p(\Omega)}\le C\Vert f\Vert_{H^{m,q}(\Omega)},\quad \,\forall\,\frac{n}{p}\ge \frac{n}{q}-m,$$

当不等式严格时, 即$\frac{n}{p}>\frac{n}{q}-m,$ 嵌入是紧的,
将有界集映到列紧集.

首先我们来简化证明的情形. 假设$m=1$时已证好, 那么$\,\forall\,m>1,$
取$q_1>q,$ 使得 $\frac{n}{q_1}-1=\frac{n}{q}-m<\frac{n}{p},$
从而由Sobolev不等式, 我们有

$$H^{m,q}\hookrightarrow H^{1,q_1}\stackrel{c}\hookrightarrow L^p$$

因此嵌入将有界集映成有界集再映至列紧集. 从而只需证$m=1$时的情形.

假设$p>q$的情形已证好, 那么当$p\le q$时, $\,\exists\,p_1>q\ge p,$
$\frac{n}{q}>\frac{n}{p_1}>\frac{n}{q}-1.$ 有嵌入

$$H^{1,q}\stackrel{c}\hookrightarrow L^{p_1}\hookrightarrow L^p.$$

这将有界集映至列紧集再映成列紧集, 因此只需证$p>q$的情形.
此时$\frac{n}{q}>\frac{n}{p}>\frac{n}{q}-1.$

首先我们考虑如下引理:

**引理 1**. *$\,\forall\,f\in C_c^\infty(\mathbb{R}^n),$ $\frac{n}{p}=\theta+\frac{n}{q}-1,$ $\theta\in(0,1),$ 我们有如下不等式:* 


$$\Vert f(x+h)-f(x)\Vert_{L^p(\mathbb{R}^n)}\le C|h|^{\theta}\Vert f\Vert_{H^{1,q}(\mathbb{R}^n)}.$$


**证:** 事实上右侧可以取齐次模.
记$\frac{n}{p}>\frac{n}{q}-1=\frac{n}{p_1}.$ $q<p<p_1,$
那么$\frac{1}{p}=\frac{\theta}{q}+\frac{1-\theta}{p_1}.$ 从而

$$\begin{aligned}
                \Vert f(x+h)-f(x)\Vert_{L^p}&\le \Vert f(x+h)-f(x)\Vert_{L^q}^\theta \Vert f(x+h)-f(x)\Vert_{L^{p_1} }^{1-\theta}\\
                &\le C\left\Vert\int_0^1 \nabla f(x+sh)\cdot hds\right\Vert_{L^{q} }^\theta\Vert f\Vert_{\dot{H}^{1,q} }^{1-\theta}\\
                &\le C |h|^\theta \Vert f\Vert^{1-\theta}_{\dot{H}^{1,q} }
            \end{aligned}$$

**推论 2**. *$\Vert\alpha_\varepsilon\ast f-f\Vert_{L^p(\mathbb{R}^n)}\le C\varepsilon^{\theta}\Vert f\Vert_{H^{1,q}(\mathbb{R}^n)}$* 

因此设$\{f_{\nu}\}$为$H^{1,q}(\mathbb{R}^n)$有界函数列,
那么$\,\forall\,\varepsilon>0,$
$\{\alpha_\varepsilon\ast f_\nu\}$为$H^{m,q}$有界函数列,
$\,\forall\,m\ge 1.$
因为对$\alpha_\varepsilon\ast f_{\nu}$的求导可归结到$\alpha_\varepsilon$上.
设对足够大的$m$有$\frac{n}{q}-m<-1,$ 那么由负指数情形的Sobolev不等式,
$\{\alpha_\varepsilon\ast f_\nu\}$是$C_{loc}^1$有界的.
从而由Arzela-Ascoli引理, 其有在任意紧集上$C^0$收敛的子列,
即$C_{loc}^{0}$紧. 自然地, 紧集上收敛列在$L^{p}$模意义下也收敛,
因此是$L^{p}_{loc}$紧的.

由推论,
对$\nu$一致地有$\alpha_\varepsilon\ast f_{\nu} \xrightarrow{L^p} f_{\nu}.$
由对角线法可证$\{f_{\nu}\}$有子列在任意紧集上成为Cauchy序列,
从而是$L^p_{loc}$紧的.
因此$H^{1,q}(\mathbb{R}^n)$到$L^p_{loc}(\mathbb{R}^n)$的嵌入是紧的.

PDE导论
-------

称$\sum_{|\alpha|\le m}a_\alpha(x)\partial^\alpha u=f(x)$为$m$阶线性PDE,
$a_\alpha,f\in C^\infty.$ 若解$u\in C^m,$ 称其为**经典解**;
若$u\in C^{m-1},$ 在曲面$\{\psi(x)=0\}$上仅沿法向$m$阶第一类间断,
其它$C^m,$ 则称$u$为**弱间断解**. 该曲面称为**弱间断面**.

若曲面$\psi(x)=x_1=0,$ 则法向导数为$\frac{\partial {} }{\partial {}x_1}.$
对一弱间断解$u,$ 倘若对于$\beta=(m,0,\cdots,0),$ 在曲面$\psi(x)=0$上,
有$a_\beta(x)\neq 0,$ 那么在该点附近有小邻域,
使得$$\partial_{x_1}^m u(x)=\sum\limits_{\begin{subarray}{c}
                |\alpha|\le m\\
                \alpha\neq \beta
            \end{subarray} } \frac{a_\alpha(x)}{a_\beta(x)}\partial^\alpha u(x)\in C^0$$
与$u$为弱间断解矛盾. 因此$a_\beta(x)=0$沿弱间断面发生.

对任意曲面$\psi(x)=0,$ 通过展平技巧, 令$y_1=\psi,$ $y_i=x_i,$ 则

$$\left\{\begin{aligned}
            \frac{\partial {}u}{\partial {}x_1}&=\frac{\partial {}u}{\partial {}y_1}\frac{\partial {}\psi}{\partial {}x_1}\\
            \frac{\partial {}u}{\partial {}x_i}&=\frac{\partial {}u}{\partial {}y_1}\frac{\partial {}\psi}{\partial {}x_i}+\frac{\partial {}u}{\partial {}y_i}
        \end{aligned}\right.$$
此时弱间断面上满足$\widetilde{a}_\beta(x)=\sum_{|\alpha|\le m}a_\alpha(x)(\nabla \psi)^\alpha=0.$

称$\psi(x)=0$为**特征曲面**,
若其满足$\sum_{|\alpha|\le m}a_\alpha(x)(\nabla \psi)^\alpha=0.$
称其法向为**特征方向**. 因此*弱间断面必为特征曲面*.

PDE理论中, 一个经典的存在性定理是Cauchy-Kovalevskaya定理.
它说明若参数函数都是实解析的, 那么给定任意解析初值,
解析解总是唯一存在的. 然而该定理使用的技术较为久远,
我们采用现代化的方法来说明.

我们考虑解$\frac{\partial {}u}{\partial {}t}=F(t,x,u,\nabla u),$
化作积分方程$u(t,x)=u_0(x)+\int_0^t F(\tau,x,u,\nabla u)d\tau.$
在ODE理论中, 由于$F$中不再涉及导数,
我们可以采用Picard迭代的方法来得到唯一解.
倘若我们可以取到合适的关于$x$的模$\Vert\cdot\Vert$,
使得$\Vert\nabla u\Vert$可以被较好地控制, 那么对于

$$\Vert u(t,x)\Vert\le \Vert u_0\Vert+\int_0^t \Vert F(\tau,x,u,\nabla u)\Vert d\tau,$$

可以从ODE视角来分析处理. 特别地通过这种方式可以给出解的理论估计.

对一般的函数, 显然无法用$\Vert u\Vert$控制$\Vert\nabla u\Vert.$
但是对于解析函数, 导数与函数值是一体的, 因此可以取到这样的模.

对解析函数$f(x)=\sum_\alpha \frac{\partial^\alpha f(0)}{\alpha!}x^\alpha,$
记其收敛半径为$R.$ 那么$\,\forall\,r\le R,$ 定义

$$\Vert f\Vert_r=\sum_\alpha \frac{|\partial^\alpha f(0)|}{\alpha!}r^{|\alpha|}<\infty.$$

显然它是一个模, 且满足$\Vert fg\Vert_r\le \Vert f\Vert_r\Vert g\Vert_r.$
特别地$\Vert f^n\Vert_r\le \Vert f\Vert_r^n.$
函数$f$是解析的当且仅当存在$r$使得$\Vert f\Vert_r<\infty.$

由于导数项只在积分中出现, 我们只需在积分意义下控制$\Vert\nabla u\Vert:$

$$\begin{aligned}
            \left\Vert\int_{0}^t \partial_{x_1} u(\tau,x)d\tau\right\Vert_{R-MT}&\le \int_0^t \sum_\alpha \frac{|\partial^\alpha \partial_{x_1}u(\tau,0)|}{\alpha! (\alpha_1+1)}(\alpha_1+1)(R-MT)^{|\alpha|}d\tau\\
            &\le \int_0^t \sum_{\alpha} \frac{|\partial^\alpha u(\tau,0)|}{\alpha!}(R-M\tau)^{|\alpha|} \frac{\alpha_1}{R-MT}\left(\frac{R-MT}{R-M\tau}\right)^{|\alpha|}d\tau\\
            &\le \sup_{\tau\in[0,t]}\Vert u(\tau,x)\Vert_{R-M\tau} \int_0^t\sum_k \frac{k}{R-MT}\left(\frac{R-MT}{R-M\tau}\right)^kd\tau\\
            &=\sup_{\tau\in[0,t]}\Vert u(\tau,x)\Vert_{R-M\tau} \int_0^t \frac{R-M\tau}{(MT-M\tau)^2} d\tau\\
            &=C(M,R,T,t)\sup_{\tau\in[0,t]}\Vert u(\tau,x)\Vert_{R-M\tau}
        \end{aligned}$$

注意解的解析半径不见得是固定的, 随时间$t$可能有衰减,
因此分析时取的模也不能在固定$r$上考察.

然而, C-K定理只说明了解的存在性与唯一性,
Hadamard指出解的**稳定性**也是需要考量的. 也就是要关注解对初值的依赖性.

文章最后更新于 2021-11-18 20:12:53 
