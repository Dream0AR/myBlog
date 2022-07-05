---
title: 《现代PDE基础》笔记(8)-数理方程
date: 2021-12-05 20:29:14
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

经典方程
--------

回忆数理方程, 我们最常接触的是如下方程:

1.  $-\Delta u=f,$ **Poisson方程**. 讨论边值问题,
    边界条件为Dirichlet或Neumann型.

2.  $u_{tt}-\Delta u=f,$ **波动方程**. 无界区域上讨论Cauchy问题,
    有界区域上讨论初边值问题. 需对$u$与$u_t$给定初始条件,
    边界条件为Dirichlet或Neumann型.

3.  $u_t-\Delta u=f,$ **热传导方程**. 讨论内容基本同波方程,
    初始条件只需对$u$给定.

考虑上述方程的一般化形式, 有如下线性方程,
讨论的问题与上面经典问题都是对应的, 不再重复. 系数都设为光滑的,
且满足**椭圆性条件**:
$\sum_{ij=1}^n a_{ij(x)}\xi_i\xi_j\ge \alpha \Vert\xi\Vert^2,$
$\,\forall\,\xi\neq 0.$ 不妨设系数是对称的.

1.  $Lu=\sum_{i,j=1}^{n}a_{ij}(x)u_{ij}+\sum_{i=1}^n b_i(x)u_i+c(x)u=f,$
    **二阶椭圆方程**.

2.  $u_{tt}-\sum_{i,j=1}^n\frac{\partial {} }{\partial {}x_i}(a_{ij}(t,x)\frac{\partial {}u}{\partial {}x_j})+\sum_{i=1}^n b_i(t,x)\frac{\partial {}u}{\partial {}x_i}+c(t,x)u=f,$
    **二阶双曲型方程**.

3.  $u_{t}-\sum_{i,j=1}^n\frac{\partial {} }{\partial {}x_i}(a_{ij}(t,x)\frac{\partial {}u}{\partial {}x_j})+\sum_{i=1}^n b_i(t,x)\frac{\partial {}u}{\partial {}x_i}+c(t,x)u=f,$
    **二阶抛物型方程**.

我们从考虑**经典解**($C^2$解)转移到考虑**弱解**(广义函数解) (Weak
Formulation). 由**Stokes公式**:

$$\int_\Omega d\omega=\int_{\partial\Omega} \omega,$$

我们有**Gauss-Green公式**:

$$\int_\Omega \partial_i fdx=\int_\Omega \nabla \cdot e_i fdx=\int_{\partial\Omega} n\cdot e_i \gamma fdS=\int_{\partial\Omega} n_i\gamma fdS.$$

其中$\gamma$为迹, 使得公式对更多函数成立. 进而我们有**分部积分公式**:

$$\int_{\Omega} \partial_i fgdx+\int_\Omega f\partial_i gdx=\int_\Omega{\partial_i (fg)}dx=\int_{\partial\Omega} n_i\gamma(fg)dS.$$


对偏微分方程的求解, 一种常用的方法是**算子半群**方法,
从而将问题转为求解无穷维ODE.

对偶算子
--------

考虑Dirichlet齐次边界问题, $u\in H_0^1(\Omega).$
作用测试函数$v\in H_0^1(\Omega)$到方程上: 
$$\begin{aligned}
            \int_\Omega vLudx=&{\color{blue}\sum_{i,j=1}^n\int_{\Omega}\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)u_jv)dx}-\sum_{i,j=1}^n\int_{\Omega}u_j\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)v)dx\\
            &+{\color{blue}\sum_{i=1}^n \int_\Omega \frac{\partial {} }{\partial {}x_i}(b_i(x)uv)dx}-\sum_{i=1}^n \int_\Omega u\frac{\partial {} }{\partial {}x_i}(b_i(x)v)dx+\int_\Omega c(x)uvdx\\
            =&-\sum_{i,j=1}^n\int_{\Omega}u_j\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)v)dx-\sum_{i=1}^n \int_\Omega u\frac{\partial {} }{\partial {}x_i}(b_i(x)v)dx+\int_\Omega c(x)uvdx\\
            =&{\color{blue}\sum_{i,j=1}^n\int_{\Omega}\frac{\partial {} }{\partial {}x_j}\left(u\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)v)\right)dx}-\sum_{i,j=1}^n\int_{\Omega}u_j\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)v)dx\\\
            &-\sum_{i=1}^n \int_\Omega u\frac{\partial {} }{\partial {}x_i}(b_i(x)v)dx+\int_\Omega c(x)uvdx\\
            =&\sum_{i,j=1}^n\int_{\Omega}u\frac{\partial^2 {} }{\partial {}x_i\partial {}x_j}(a_{ij}(x)v)dx-\sum_{i=1}^n \int_\Omega u\frac{\partial {} }{\partial {}x_i}(b_i(x)v)dx+\int_\Omega c(x)uvdx\\
            =&\int_\Omega uL^*vdx.
        \end{aligned}$$
 推导中多次用到Gauss-Green公式.
由于函数具齐次边界条件, 边界项(蓝色项)全部消失.
由此我们得到了对偶算子$L^\ast .$

类似地, 对双曲型, 抛物型方程, 我们也有对偶算子:

$$M^\ast v=\frac{\partial {}^2v}{\partial {}t^2}-\sum_{i,j=1}^n\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)v_j)-\sum_{i=1}^n\frac{\partial {} }{\partial {}x_i}(b_i(x)v)+c(x)v,$$


$$M^\ast v=-\frac{\partial {}v}{\partial {}t}-\sum_{i,j=1}^n\frac{\partial {} }{\partial {}x_i}(a_{ij}(x)v_j)-\sum_{i=1}^n\frac{\partial {} }{\partial {}x_i}(b_i(x)v)+c(x)v.$$


对偶算子的重要性在于, 由泛函分析, 有如下重要命题:

**命题 1**. *对Hilbert空间$H,$ 有界线性算子$A:H\rightarrow H,$ 问题$Ax=b,$ $\,\forall\,b\in H$的存在性, 等价于问题$A^\ast y=0$的唯一性(即只有零解).* 

**证:** 存在性$\Rightarrow$唯一性: $\,\forall\,y$使得$A^\ast y=0,$
存在$x$使得$Ax=y.$ 因此,

$$0=(x,A^\ast y)=(Ax,y)=(y,y) \,\Rightarrow\, y=0.$$


唯一性$\Rightarrow$存在性: 对$b\in H,$ 只需找$x$满足:

$$(Ax,y)=(b,y),\quad \forall y\in H.$$


取$A^\ast :H\rightarrow B=\operatorname{Im} A^\ast ,$
为连续线性算子.它是单射因为$A^\ast y=0$只有零解. 由逆算子定理,
$(A^\ast )^{-1}:B\rightarrow H$也是连续线性算子.

定义连续线性泛函$l_b:B\rightarrow \mathbb{R}$:

$$l_b(v)=(b,(A^\ast )^{-1}v)=(b,u),$$
 这里$A^\ast u=v.$ 由Riesz表示定理,
存在$x\in B$使得$l_b(v)=(x,v).$ 因此对任意$y\in H:$

$$l_b(A^\ast y)=(b,y)=(x,A^\ast y)=(Ax,y).$$

这说明我们找到的$x\in B$正是$Ax=b$的解.

能量方法
--------

### 乘子法

由对偶算子, 在大多数情形, 我们只需处理唯一性的证明, 而这是容易的.
通常采用能量方法, 通过求导由能量守恒说明唯一性.
能量方法往往来源于乘子法. 对椭圆方程, 考虑能量形式$\int uLu$(势能);
对波动方程, 考虑能量形式$\int u_t Mu$(动能); 对热传导方程,
考虑能量形式$\int uMu$(势能).

以椭圆方程为例. 对$u\in H_0^1(\Omega),$ 我们有: 
$$\begin{aligned}
            -\int_\Omega uLudx=&\int_\Omega \sum_{i,j=1}^n a_{ij}(x)u_iu_jdx+\int_\Omega \sum_{i=1}^n\left(\sum_{j=1}^n\frac{\partial {}a_{ij} }{\partial {}x_j}-b_i(x)\right)u_iudx-\int_\Omega c(x)u^2dx\\
            \ge &\int_\Omega \alpha \sum_{i=1}^n u_i^2dx-\int_\Omega C'\sum_{i=1}^n \left(\frac{\alpha}{2C'} u_i^2+\frac{C'}{2\alpha}u^2\right)dx-\int_\Omega C''u^2dx\\
            \ge &\frac{\alpha}{2}\Vert\nabla u\Vert-C\Vert u\Vert.
        \end{aligned}$$
过程中用到了不等式$2ab\le \varepsilon a^2+\frac{1}{\varepsilon} b^2.$
该不等式称为Garding不等式:

**定理 2** (Garding不等式). *设$\Omega$为$\mathbb{R}^n$中有界区域, 边界光滑. 若$L$为二阶椭圆型算子, 则$\,\forall\,u\in H_0^1(\Omega),$ 有如下不等式:* 


$$\operatorname{Re}(-Lu,u)_{L^2(\Omega)}\ge C_1\Vert u\Vert_{1}^2-C_2\Vert u\Vert^2.$$


其中系数可以具体计算出来. 当$C_2\le 0$时, 对问题$Lu=0$考虑唯一性:

$$C_1\Vert u\Vert_{1}^2-C_2\Vert u\Vert^2\le 0\,\Rightarrow\, u\equiv 0.$$

对线性方程, $Lu=0$的唯一性与$Lu=f$的唯一性当然是等价的.

### 特征问题

一般地, $C_2$不见得非正. 但是对充分大的$\Lambda\in \mathbb{R},$
考虑$(-L+\Lambda)u=0$就可以强行将Garding不等式中右侧项调至非负,
此时问题解具有唯一性. 因此可以在像空间定义逆算子$(-L+\Lambda)^{-1}.$
我们进行如下推导: 
$$\begin{aligned}
            C_1\Vert u\Vert^2_{1}&\le \left<{}(-L+\Lambda)u,u\right>\\
            &\le \Vert(-L+\Lambda)u\Vert\Vert u\Vert\le \Vert(-L+\Lambda)u\Vert\Vert u\Vert_{H^1}\\
            \Vert u\Vert_{1}&\le C_3\Vert(-L+\Lambda)u\Vert\\
            \Vert(-L+\Lambda)^{-1}v\Vert_{1}&\le C_3 \Vert v\Vert
        \end{aligned}$$
 因此$(-L+\Lambda)^{-1}$为有界算子.
由于$H_0^1\stackrel{c}\hookrightarrow L^2$为紧嵌入, 它还是紧算子.
其特征值可列, $\mu_i\rightarrow 0.$

考虑特征问题: 
$$\begin{aligned}
            -Lu&=\lambda u\\
            (-L+\Lambda)u&=(\lambda+\Lambda)u\\
            \frac{1}{\lambda+\Lambda}u&=(-L+\Lambda)^{-1}u=\mu u\\
        \end{aligned}$$
 因此$-L$特征值也是可列的,
且$\mu_i=\frac{1}{\lambda_i+\Lambda}\rightarrow 0$ $\Rightarrow$
$\lambda_i\rightarrow \infty,$ 特征值趋于无穷.

文章最后更新于 2021-12-05 20:30:25 
