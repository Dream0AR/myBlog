---
title: 《现代PDE基础》笔记(9)-伽辽金(Galerkin)方法
date: 2021-12-12 18:12:10
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

椭圆方程
--------

回忆上节说明了$Ax=b$的存在性等价于$A^\ast y=0$的唯一性.
若$A$是$n\times n$矩阵, 那么$A^\ast y=0$的唯一性等价于$Ay=0$的唯一性.
因此$Ax=b$的存在性等价于唯一性.

对于椭圆型方程, 考虑齐次Dirichlet边界问题$Lu=f\in H^{-1}(\Omega).$
我们有Garding不等式:


$$
\left<{}-Lu,u\right>_{L^2}\ge C_1\Vert u\Vert_1^2-C_2\Vert u\Vert^2.
$$


当$C_2\le 0$时, 我们可以说明问题的唯一性. 至于存在性,
按原来的方法需要考虑对偶算子$L^\ast $对应的Garding不等式中是否有$C_2^\ast \le 0,$
从而通过对偶问题的唯一性说明原问题存在性.
但事实上通过$C_2\le 0$直接可以说明原问题解的存在性.

考虑**伽辽金(Galerkin)方法**.
对偶问题唯一性导出存在性的方法只说明了理论上的存在性,
无法具体给出解的构造. 而该方法能够给出解的构造方法,
是微分方程数值解中**有限元方法**的理论基础.

回忆$H^{m,p}$为可分空间, 因为它能等距嵌入到$(L^p)^N$中,
而后者是可分空间. 因此, $H_0^1(\Omega)$为可分Hilbert空间,
有一组完备正交基$\{\phi_i\}.$ 理论上,
可以取特征函数系$-\Delta \phi_j=\lambda_j\phi_j,$
$\phi_j|_{\partial\Omega}=0.$ 算子自共轭时特征函数系当然正交.

由于$C_c^\infty(\Omega)$在$H_0^1(\Omega)$中稠密,
我们当然可以取$\{\phi_i\}\subset C_c^\infty(\Omega).$
考虑$u_m=\sum_{i=1}^ma_i\phi_i,$ $f=\sum_{i=1}^\infty f_i\phi_i,$
$f_m=\sum_{i=1}^m f_i\phi_i\rightharpoonup f.$ 为了解$Lu=f,$
一种期待是通过解$Lu_m=f_m$得到$u_m$给出$u.$ 但这种期望往往是落空的,
因为对于方程 

$$
Lu_m=\sum_{i=1}^m a_iL\phi_i=\sum_{i=1}^mf_i\phi_i=f_m,
$$


当$\{\phi_i\}$不取特征函数系时, 这将是一个无穷维方程,
无法针对有限个未知量求解.

Galerkin的方法是, 我们考虑如下问题:


$$
\left<{}Lu_m,\phi_j\right>=\left<{}f_m,\phi_j\right>,\quad j=1,\cdots,m.
$$


也就是$\sum_{i=1}^m a_i\left<{}L\phi_i,\phi_j\right>=\sum_{i=1}^mf_i\left<{}\phi_i,\phi_j\right>,$
$j=1,\cdots,m.$ 这是矩阵方程$Ax=b$的形式. 由一开始所述,
为了证明解的存在性, 只需说明解的唯一性. 为此采用椭圆估计即可.

考虑$\left<{}Lu_m-f_m,u_m\right>=0,$ 由Garding不等式, 当$C_2\le 0$时,
$$
\begin{aligned}
            C_1\Vert u_m\Vert^2_1&\le \left<{}-f_m,u_m\right>\le \Vert f_m\Vert_{-1}\Vert u_m\Vert_1\le \frac{1}{2C_1}\Vert f_m\Vert_{-1}^2+\frac{C_1}{2}\Vert u_m\Vert_1^2\\
            \frac{C_1}{2}\Vert u_m\Vert^2_1&\le \frac{1}{2C_1}\Vert f_m\Vert_{-1}^2\\
            \Vert u_m\Vert_1&\le \frac{1}{C_1}\Vert f_m\Vert_{-1}\le \frac{1}{C_1}\Vert f\Vert_{H^{-1} }+M
        \end{aligned}
$$
最后一个不等号是因为$f_m\rightharpoonup f$弱$\ast$收敛,
推出$\Vert f_m-f\Vert_{H^{-1} }$有界(共鸣定理).
代入$f_m=0$即得到方程解的唯一性, 从而解也是存在的, 矩阵$A$可逆,
我们可以找到$u_m$为问题解.

特别地, 根据最后一行, 我们可以看到$\{u_m\}\subset H_0^1(\Omega)$有界.
它是Hilbert空间, 当然是某个空间(自身)的对偶空间(自反),
从而$\{u_m\}$是弱紧的, 即其有子列弱收敛, 不妨设自身弱收敛到$u.$
断言$u$即为弱解.

$\,\forall\,v\in H_0^1(\Omega),$ 取$v_m=\sum_{i=1}^m\xi_i\phi_i,$
那么$v_m\xrightarrow{H^1}v.$
由于$\left<{}Lu_m,\phi_j\right>=\left<{}f_m,\phi_j\right>,$
$j=1,\cdots,m.$ 我们有$\left<{}Lu_m,v_m\right>=\left<{}f_m,v_m\right>.$
注意到$\left<{}f_m,v_m\right>=\left<{}f_m,v_m-v\right>+\left<{}f_m,v\right>\rightarrow \left<{}f,v\right>.$
其中


$$
|\left<{}f_m,v_m-v\right>|\le \Vert f_m\Vert_{-1}\Vert v_m-v\Vert_1\le (\Vert f\Vert_{-1}+M)\Vert v_m-v\Vert_1\rightarrow 0.
$$


同时,


$$
\left<{}Lu_m,v_m\right>=-\sum_{i,j=1}^n\int_{\Omega}\partial_ju_m\partial_i(a_{ij}(x)v_m)dx-\sum_{i=1}^n \int_\Omega u_m\partial_i(b_i(x)v_m)dx+\int_\Omega c(x)u_mv_mdx.
$$


类似地,
$\left<{}Lu_m,v_m\right>=\left<{}Lu_m,v_m-v\right>+\left<{}Lu_m,v\right>,$
其中根据强收敛与分部积分,


$$
|\left<{}Lu_m,v_m-v\right>|\le \alpha\Vert u_m\Vert_1\Vert v_m-v\Vert_1\rightarrow 0;
$$




$$
\left<{}Lu_m,v\right>=\left<{}u_m,L^\ast v\right>\rightarrow \left<{}u,L^\ast v\right>=\left<{}Lu,v\right>.
$$


因此$\left<{}Lu_m,v_m\right>\rightarrow \left<{}Lu,v\right>.$
于是$\left<{}Lu,v\right>=\left<{}f,v\right>,$
$\,\forall\,v\in H_0^1(\Omega).$ 这就说明了$u$为弱解,
由此证明了原问题解的存在性, 同时给出了具体得到解的方法.

双曲型方程
----------

考虑双曲型方程


$$
Mu=\frac{\partial^2 u}{\partial t^2}-\left(\sum_{i,j=1}^n\frac{\partial}{\partial x_i}\left(a_{ij}(t,x)\frac{\partial u}{\partial x_j}\right)+\sum_{i=1}^nb_i(t,x)\frac{\partial u}{\partial x_i}+c(t,x)u\right)=f(t,x).
$$


其中设$a_{ij}$满足**一致椭圆性条件**: $\,\exists\,\alpha>0,$ 使得


$$
\sum_{i,j=1}^n a_{ij}(t,x)\xi_i\xi_j\ge \alpha\sum_{i=1}^n \xi_i^2, \quad\,\forall\,\xi\in \mathbb{R}^n\setminus\{0\}.
$$



我们考虑Galerkin方法: 对Dirichlet齐次边界问题,
取$H_0^1(\Omega)$的一组$C_c^\infty$完备正交基$\{\phi_i(x)\},$
那么记$u_m(t,x)=\sum_{i=1}^m a_i(t)\phi_i(x),$ 给定初值解方程


$$
\left<{}Mu_m,\phi_j\right>=\left<{}f,\phi_j\right>, \quad j=1,\cdots,m,
$$


求系数$a_i(t).$ 这是$m$个二阶常微分方程构成的ODE方程组, 总是可解的.
为了说明$\{u_m\}$有子列弱收敛于弱解, 我们只需讨论其有界性.
可以考虑差分方法, 此处我们给出能量不等式, 采用能量方法来解决.

利用分部积分, 由$u$具齐次边界推出$u_t$也是, 考虑


$$
\int_\Omega u_tMudx=\frac{1}{2}\partial_t \int_\Omega u_t^2dx+\int_\Omega \sum_{i,j=1}^nu_{it}a_{ij}u_jdx-\int_\Omega\sum_i u_tb_iu_idx-\int_\Omega u_tcudx=\int_\Omega u_tfdx.
$$


利用对称性, 可以得到


$$
\int_\Omega \sum_{i,j=1}^nu_{it}a_{ij}u_jdx= \frac{1}{2}\partial_t\int_\Omega \sum_{i,j=1}^n a_{ij}u_iu_jdx-\frac{1}{2}\int_\Omega \sum_{i,j=1}^n\partial_t a_{ij}u_iu_jdx.
$$


因此,


$$
\frac{1}{2}\partial_t \int_\Omega u_t^2dx+\frac{1}{2}\partial_t\int_\Omega \sum_{i,j=1}^n a_{ij}u_iu_jdx=\int_\Omega u_tfdx+\frac{1}{2}\int_\Omega \sum_{i,j=1}^n\partial_t a_{ij}u_iu_jdx+\int_\Omega\sum_i u_tb_iu_idx+\int_\Omega u_tcudx.
$$


在$\overline{\Omega_T}=[0,T]\times \overline{\Omega}$上考虑,
可以取到$C>0,$ 使得


$$
\partial_t \int_\Omega u_t^2+\sum_{i,j=1}^n a_{ij}u_iu_j dx\le C(\Vert u\Vert_1^2+\Vert u_t\Vert^2+\Vert f\Vert^2)
$$


两边积分, 那么在$t$时刻, 记初值为$u=g,$ $u_t=h,$ 则


$$
\Vert u_t\Vert^2+\Vert u\Vert^2_1\le \Vert g\Vert_1^2+\Vert h\Vert^2+C\int_0^t\Vert u_t\Vert^2+\Vert u\Vert_1^2+\Vert f\Vert^2d\tau
$$


记$E(t)=\Vert u_t\Vert^2+\Vert u\Vert^2_1,$
$E_0=\Vert g\Vert_1^2+\Vert h\Vert^2+C\int_0^T\Vert f\Vert^2d\tau,$ 则


$$
E(t)\le E_0+C\int_0^tE(\tau)d\tau.
$$

 总结上面的方法,
我们通过取模的方式, 将PDE化为ODE, 得到了一个常微分不等式.
那么利用Gronwall不等式即可得到能量不等式.

**引理 1** (Gronwall不等式). *设非负$E(t)\in C[0,T],$ 满足$E(t)\le E_0+C\int_0^tE(\tau)d\tau,$ $C,E_0>0,$ 则* 



$$
E(t)\le E_0e^{Ct}.
$$



**证:** 记$I(t)=\int_0^tE(\tau)d\tau,$
则原式等于$\partial_t I(t)\le E_0+CI(t).$ 因此,


$$
\partial_t(e^{-Ct}I(t))\le E_0e^{-Ct}\,\Rightarrow\, e^{-Ct}I(t)\le \frac{E_0}{C}(1-e^{-Ct})\,\Rightarrow\, I(t)\le \frac{E_0}{C}(e^{Ct}-1).
$$


代入上式, 即有 

$$
E(t)=\partial_t I(t)\le E_0e^{Ct}.
$$



特别地, 我们有$E(t)\le E_0e^{CT},$ $\,\forall\,t\in [0,T].$ 因此局部上,
$u$是有界的, 进而是弱紧的. 进一步, 和椭圆方程类似地,


$$
\left<{}f,v\right>\leftarrow \left<{}Mu_m,v\right>=\left<{}u_m,M^\ast v\right>\rightarrow \left<{}u,M\ast v\right>=\left<{}Mu,v\right>
$$


从而$\{u_m\}$弱收敛到的$u$为弱解. 当然,
也可以通过对偶问题的能量估计说明唯一性, 从而给出原问题解的存在性.
但同样的, 这只能给出理论上的说明. 令$E_0=0$即可说明唯一性,
对一般的$E_0,$ 能量方法给出了稳定性的说明.

抛物型方程
----------

抛物型方程与双曲型方程类似, 在此只做能量估计的推导.


$$
\left<{}Mu,u\right>=\frac{1}{2}\partial_t\int_\Omega u^2dx+\int_\Omega \sum_{i,j=1}^n a_{ij}u_iu_jdx-\int_\Omega \sum_{i=1}^n b_iu_iudx-\int_\Omega cu^2dx=\int_\Omega fudx
$$


通过$ab\le \varepsilon{a^2}+\frac{b^2}{\varepsilon},$ 可以说明:


$$
\frac{1}{2}\partial_t\Vert u\Vert^2\le \frac{1}{2}\partial_t\Vert u\Vert^2+\frac{\lambda}{2} \Vert\nabla u\Vert^2\le C(\Vert u\Vert^2+\Vert f\Vert^2)
$$


因此, 设初值$u=g,$ 则


$$
\Vert u\Vert^2\le \Vert g\Vert^2+C\int_0^T\Vert f\Vert d\tau + C\int_0^t \Vert u\Vert^2d\tau.
$$


记$E(t)=\Vert u\Vert^2,$
$E_0=\Vert g\Vert^2+C\int_0^T\Vert f\Vert d\tau,$
则同样由Gronwall不等式, 我们有 

$$
E(t)\le E_0e^{Ct}.
$$


从而通过Galerkin方法能够得到弱解, 同时也讨论了解的唯一性与稳定性.

算子半群
--------

另一种非常实用的方法为算子半群方法. 如对抛物型问题,
考虑解齐次Dirichlet边界初值问题: 
$$
\left\{\begin{aligned}
            &u_t=Au=\sum_{i,j=1}^n\partial_j(a_{ij}u_i)\\
            &u(0,x)=g(x)\\
            &u|_{\partial\Omega\times [0,T]}=0
        \end{aligned}\right.
$$
 那么形式上,
$u(t,x)=e^{At}g(x)$即给出了问题解, 因为$u_t=Ae^{At}g(x)=Au,$
且满足初值与边界条件. 这里$e^{At}:=\sum_n \frac{A^n}{n!}t^n.$
为了给出严格说明, 对算子取模, 那么


$$
\Vert e^{At}\Vert\le \sum_n\frac{\Vert A^n\Vert}{n!}t^n\le \sum_n\frac{\Vert A\Vert^n}{n!}t^n
$$


这里利用了相容条件$\Vert AB\Vert\le \Vert A\Vert\Vert B\Vert.$
从而倘若$\Vert A\Vert\le 1,$ 那么$\Vert e^{At}\Vert\le e^t,$
算子是有意义的.

然而一般地, 显然$\Vert A\Vert\le 1$不见得成立.
回忆$(\lambda-A)^{-1}$对充分大的$\lambda$是有界线性算子,
因此对其讨论是有希望的.
模仿$a=\lim\limits_{\lambda\rightarrow\infty}\lambda a(\lambda-a)^{-1},$
定义


$$
A_\lambda=\lambda A(\lambda-A)^{-1}=\lambda(A-\lambda+\lambda)(\lambda-A)^{-1}=-\lambda+\lambda^2(\lambda-A)^{-1}.
$$



我们可以期待如下极限成立:


$$
e^{At}=\lim\limits_{\lambda\rightarrow \infty}e^{A_\lambda t}=\lim\limits_{\lambda\rightarrow \infty}e^{-\lambda t}e^{\lambda^2(\lambda-A)^{-1}t}
$$



此时$\Vert e^{A_\lambda t}\Vert=e^{-\lambda t}\Vert e^{\lambda^2(\lambda-A)^{-1}t}\Vert.$
而$\Vert(\lambda-A)^{-1}\Vert\le \frac{1}{\lambda},$
因此$\Vert e^{\lambda^2(\lambda-A)^{-1}t}\Vert\le e^{\lambda t},$
$\Vert e^{A_\lambda t}\Vert\le 1,$ 算子是有意义的.

文章最后更新于 2021-12-13 11:11:02 
