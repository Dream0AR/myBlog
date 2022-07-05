---
title: 《现代PDE基础》笔记(2)-广义函数运算
date: 2021-10-17 21:50:09
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

极限
----

对某基本函数空间的广义函数列$\{T_k\},$
若对其基本函数空间上的任意元素$\varphi,$
有$\left<{}T_k,\varphi\right>\rightarrow 0,$ 则称$T_k$(弱)收敛于$0.$
若$T_k-T$收敛于$0,$ 则称$T_k$的极限是$T,$ 记为$T_k\rightarrow T.$

对常义函数, 我们可以做正则化$J_\varepsilon.$ 下面我们说明,
对广义函数也有类似的正则化.

**定理 1.1**. *若$T\in \mathscr{D}'(\mathbb{R}_y^n),$ $T_\varepsilon(x):=\left<{}T_y,\alpha_\varepsilon(x-y)\right>\in C^\infty(\mathbb{R}_x^n),$ $\alpha_\varepsilon$如上节所示.* 

**证:** 不难说明$x\rightarrow x_0$时,
$\alpha_\varepsilon(x-y)\xrightarrow{\mathscr{D}(\mathbb{R}_y^n)} \alpha_\varepsilon(x_0-y)$(等度连续),
因此$\left<{}T,\alpha_\varepsilon(x-y)\right>\rightarrow\left<{}T,\alpha_\varepsilon(x_0-y)\right>,$
$T_\varepsilon(x)$为连续函数. 类似地,
$\frac{\alpha_\varepsilon(x+\Delta x_k,y)-\alpha_\varepsilon(x,y)}{\Delta x_k}\xrightarrow{\mathscr{D}(\mathbb{R}_y^n)} \partial_k \alpha_\varepsilon(x,y),$
从而有
$$\frac{T_\varepsilon(x+\Delta x_k)-T_\varepsilon(x)}{\Delta x_k}=\left<{}T,\frac{\alpha_\varepsilon(x+\Delta x_k,y)-\alpha_\varepsilon(x,y)}{\Delta x_k}\right>\rightarrow\left<{}T,\partial_k \alpha_\varepsilon(x,y)\right>,$$
因此$T_\varepsilon(x)$关于$x_k$可导. 同理可证它有任意阶导数,
因此是光滑函数.

当$T$为常义函数时, 泛函即为积分,
因此对广义函数的正则化是对常义函数正则化的推广.
当然有了下面的定理才让正则化有意义:

**定理 1.2**. *$T\in \mathscr{D}'(\mathbb{R}^n)$时, $T_\varepsilon\xrightarrow{\mathscr{D}'} T.$* 

**证:**
即证$\left<{}T_\varepsilon,\varphi\right>=\int_{\mathbb{R}^n} T_\varepsilon\varphi dx\rightarrow \left<{}T,\varphi\right>,$
$\,\forall\,\varphi\in \mathscr{D}(\mathbb{R}^n).$
由于$\varphi$具紧支集, 可以用Riemann积分的方式来逼近式中的积分.
然而将积分写成求和形式后,
$\alpha_\varepsilon(x-y)$可以与$\varphi(x)$先行结合, 即
$$\sum_i\alpha_\varepsilon(x_i-y)\varphi(x_i)\Delta x_i\xrightarrow{\mathscr{E} }\int_{\mathbb{R}_x^n}\alpha_\varepsilon(x-y)\varphi(x)dx,$$
从而$\left<{}T_\varepsilon,\varphi\right>=\left<{}T,\varphi_\varepsilon\right>\rightarrow \left<{}T,\varphi\right>,$
命题得证.

**定理 1.3**. *$T\in \mathscr{E}'(\mathbb{R}^n)$时, $T_\varepsilon\xrightarrow{\mathscr{E}'} T.$* 

**证:**
即证$\left<{}T_\varepsilon,\varphi\right>=\int_{\mathbb{R}^n} T_\varepsilon\varphi dx\rightarrow \left<{}T,\varphi\right>,$
$\,\forall\,\varphi\in \mathscr{E}(\mathbb{R}^n).$ 由于$T$具紧支集,
不难证明$T_\varepsilon$也具紧支集, 且充分靠近$\operatorname{supp}T.$
取紧支撑的$\zeta$在$\operatorname{supp}T$某邻域上恒为$1,$ 由前面的定理,
$\left<{}T_\varepsilon,\zeta\varphi\right>\rightarrow \left<{}T,\zeta\varphi\right>.$
由于在$\operatorname{supp}T$邻域上$\zeta\varphi=\varphi,$
且对充分小的$\varepsilon,$ 该邻域包含了$T,T_\varepsilon$的支集, 因此
$$\left<{}T_\varepsilon,\zeta\varphi\right>=\left<{}T_\varepsilon,\varphi\right>\rightarrow \left<{}T,\varphi\right>=\left<{}T,\zeta\varphi\right>,$$
命题得证.

导数
----

设$T\in\mathscr{D}'(\mathbb{R}^n),$
定义$T$关于$x_k$的**(广义)导数**$\frac{\partial {}T}{\partial {}x_k}\in \mathscr{D}'(\mathbb{R}^n),$
满足
$$\left<{}\frac{\partial {}T}{\partial {}x_k},\varphi\right>=-\left<{}T,\frac{\partial {}\varphi}{\partial {}x_k}\right>.$$
由分部积分公式, 当$T$为$C^1$函数时, 广义导数即为一般意义下的导数.
因此广义导数的概念是通常导数概念的推广. 特别地, 对于某些常义函数,
它无法按照通常概念求导. 但将其视为广义函数,
就可以得到广义函数空间中的广义导数, 这往往是十分有用的.

类似地定义高阶导数
$$\left<{}\partial^\alpha T,\varphi\right>=(-1)^{|\alpha|}\left<{}T,\partial^\alpha \varphi\right>.$$
可见广义函数任意阶导数存在, 且混合偏导与顺序无关.

一个有意思的例子是, 若$\operatorname{supp}T=\{0\},$
则$T$只能是$\delta$及其导数的有限线性组合.
证明通过对$\varphi$进行Taylor展开给出即可.

乘子
----

对$T\in \mathscr{D}'(\mathbb{R}^n),$ $\alpha\in C^\infty(\mathbb{R}^n),$
定义$\alpha T\in \mathscr{D}'(\mathbb{R}^n)$为
$$\left<{}\alpha T,\varphi\right>=\left<{}T,\alpha\varphi\right>.$$
称$\alpha$为$\mathscr{D}'(\mathbb{R}^n)$的**乘子**.
类似地它也是$\mathscr{E}'(\mathbb{R}^n)$的乘子,
但一般不见得是$\mathscr{S}(\mathbb{R}^n)$的乘子.

类似于常义函数, 我们有Leibniz公式:
$$\partial^r(\alpha T)=\sum_{p+q=r} \frac{r!}{p!q!}(\partial^p \alpha \cdot \partial^q T).$$

自变量变换
----------

仿照$C_c^\infty$函数的自变量变换, 对$T\in \mathscr{D}'(\Omega_x),$
给光滑同胚$\psi:\Omega_x\rightarrow \Omega_y,$
定义$S\in \mathscr{D}'(O_y):$
$$\left<{}S,\varphi\right>=\left<{}T,\det|\psi'|\varphi\circ\psi\right>.$$
当$T$为常义函数时, $S(y)=T(\psi^{-1}(y)).$ 该定义自然也是通常定义的推广.

卷积
----

对$f,g\in C_c^\infty(\mathbb{R}^n),$ 考虑$f\ast g$在$\varphi$上的作用,
类比地定义广义积分间的卷积. 设$S,T$为广义函数, 定义**卷积**$S\ast T:$
$$\left<{}S\ast T,\varphi\right>=\left<{}S_x,\left<{}T_y,\varphi(x+y)\right>\right>,$$
$\,\forall\,\varphi\in \mathscr{D}(\mathbb{R}^n).$ 和常义函数一样,
广义函数的卷积也不总是有意义的.
当$S,T\in \mathscr{D}'(\mathbb{R}^n)$中至少一者在$\mathscr{E}'(\mathbb{R}^n)$中时,
卷积有意义, $S\ast T\in \mathscr{D}'(\mathbb{R}^n).$

证明过程分为两部分, 首先只有当$T\in \mathscr{D}'/\mathscr{E}'$时,
$\psi:=\left<{}T_y,\varphi(x+y)\right>\in \mathscr{E}/\mathscr{D},$
才能使定义有意义; 其次当$\varphi_\nu\xrightarrow{\mathscr{D} } 0$时,
有$\psi_\nu\xrightarrow{\mathscr{E}/\mathscr{D} }0,$
因此线性泛函是连续的. 证明方法与先前类似, 在此略过.

可以证明,
对$R,S,T\in \mathscr{D}'(\mathbb{R}^n)$且其中至少两个具紧支集时,
广义函数的卷积(同常义卷积一样)满足如下性质:

1.  $\operatorname{supp}(S\ast T)\subset \operatorname{supp}(S)+\operatorname{supp}(T);$

2.  $(R\ast S)\ast T=R\ast (S\ast T);$

3.  $S\ast T=T\ast S;$

4.  $\delta\ast T=T\ast \delta=T;$

5.  $\alpha_1+\alpha_2=\alpha$时,
    $\partial^\alpha(S\ast T)=(\partial^{\alpha_1})\ast (\partial^{\alpha_2});$

6.  $T\in \mathscr{D}'/\mathscr{E}',$
    $\varphi\in \mathscr{D}/\mathscr{E}$时,
    $T\ast \varphi=\left<{}T_y,\varphi(x-y)\right>\in C^\infty(\mathbb{R}_x^n).$

前四个性质说明$\mathscr{E}'(\mathbb{R}^n)$关于通常的线性运算与卷积运算构成有单位元$\delta$的交换代数,
称为**卷积代数**. 对函数的正则化有$f_\varepsilon=f\ast \alpha_\varepsilon,$
类似地对广义函数的正则化也有$T_\varepsilon=T\ast \alpha_\varepsilon.$

文章最后更新于 2021-10-18 15:02:37 
