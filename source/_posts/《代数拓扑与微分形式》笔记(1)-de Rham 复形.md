---
title: 《代数拓扑与微分形式》笔记(1)-de Rham 复形
date: 2021-09-19 18:59:49
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

de Rham
上同调是流形的最重要的微分同胚不变量，而不变量是我们很期待的东西，用不变量可以快速区分/分类流形。

$\mathbb{R}^n$ de Rham 上同调
-----------------------------

### 微分形式

在$\mathbb{R}^n$中坐标为$(x_1,...,x_n)$, 记自变量微分$dx_1,...,dx_n$,
引入记号$\wedge$(wedge), 满足$dx_i\wedge dx_i=0$,
$dx_i\wedge dx_j=-dx_j\wedge dx_i$, $i\neq j$.

记$\Omega^q=\operatorname{span}_R\{dx_{i_1}\wedge\cdots\wedge dx_{i_q}|{}i_{1}<...<{}i_{ {}q}\},$
$\Omega^\ast=\oplus_{q=0}^n \Omega^q$, 易见其维数为$2^n$.

记光滑$q-$形式全体为$\Omega^q(\mathbb{R}^n)=C^\infty(\mathbb{R}^n)\otimes_\mathbb{R}\Omega^q$,
光滑形式全体为$\Omega^\ast(\mathbb{R}^n)=\oplus_{q=0}^n \Omega^q(\mathbb{R}^n)$.

于是任意光滑形式$\omega\in \Omega^\ast(\mathbb{R}^n)$可以**按型分解**为$\omega=\sum_{q=0}^{n} \omega_q$,
$\omega_q\in \Omega^q(\mathbb{R}^n)$.
$\omega_q=\sum_{I:{}i_{1}<...<{}i_{ {}q} }f_Idx_I$, $I$称为**多重指标**。

### 算子

外积算子$\wedge$:(可以看成原来记号的扩充定义)
$\tau=\sum_{I:{}i_{1}<...<{}i_{ {}p} }f_Idx_I\in \Omega^p(\mathbb{R}^n)$,
$\omega=\sum_{J:{}j_{1}<...<{}j_{ {}q} }g_Jdx_J\in \Omega^q(\mathbb{R}^n)$,
则
$\tau\wedge\omega=\sum_{I,J}f_Ig_Jdx_I\wedge dx_J=\sum_{K:{}k_{1}<...<{}k_{ {}p+q} }h_Kdx_K$.
其中$h_K$可由$f_I,g_J$表出。

**命题 1.1**. *$\tau\wedge \omega = (-1)^{pq}\omega \wedge \tau$* 

外微分算子$d:\Omega^q(\mathbb{R}^n)\rightarrow \Omega^{q+1}(\mathbb{R}^n)$,
$\omega=\sum_I f_I dx_I$,
$d\omega=\sum_I df_I\wedge dx_I=\sum_{i,I} \frac{\partial {}f_I}{\partial {}x_i}dx_i\wedge dx_I$,
是$C^\infty$上微分算子的自然延拓.

**命题 1.2**. *$\tau\in \Omega^p(\mathbb{R}^n)$, 则$d(\tau\wedge \omega)=d\tau \wedge \omega + (-1)^p \tau\wedge d\omega,$ $d^2=0$.* 

### de Rham 复形

由于$d^2=0$, $\{\Omega^\ast(\mathbb{R}^n),d\}$形成$\mathbb{R}^n$的**de
Rham复形**：
$$\Omega^0(\mathbb{R}^n)\xrightarrow{d}\cdots\xrightarrow{d}\Omega^n(\mathbb{R}^n).$$
可以对$q<0$及$q>n$添加$\Omega^q(\mathbb{R}^n)=0$.

定义$Z^q(\mathbb{R}^n)=\{\omega\in\Omega^q(\mathbb{R}^n)|d\omega=0\},$
其中元素称为**闭的**$q$-形式.
定义$B^q(\mathbb{R}^n)=\{d\tau | \tau\in\Omega^{q-1}(\mathbb{R}^n)\},$
其中元素称为**恰当的**$q$-形式. 特别地,
规定$Z^n(\mathbb{R}^n)=\Omega^n(\mathbb{R}^n),$ $B^0(\mathbb{R}^n)=0.$

由于$d^2=0$, $B^q(\mathbb{R}^n)\subset Z^q(\mathbb{R}^n).$
定义$\mathbb{R}^n$的第$q$个de
Rham上同调为$H^q_{dR}(\mathbb{R}^n)=Z^q(\mathbb{R}^n)/B^q(\mathbb{R}^n).$
不引起歧义时, 通常隐去下标.
闭$q$-形式$\omega$所在上同调类记为$[\omega].$

类似地, 对$\mathbb{R}^n$开集$U$上的de Rham复形,
只需在一开始将光滑函数定义域设置为$U$即可.

我们有**上同调的Poincaré引理**: $H^q(\mathbb{R}^n)=\begin{cases}
    \mathbb{R}\quad&q=0\\
    0&q\neq 0
\end{cases}.$

紧上同调
--------

记$\Omega^\ast_c(\mathbb{R}^n)=C^\infty_c(\mathbb{R}^n)\otimes_\mathbb{R}\Omega^\ast,$
即将光滑函数改为具有紧支集的光滑函数. 类似地, 可以将其按型分解.
由于光滑函数偏导支集闭包含于原来的紧支集, 它也是有紧支撑的,
因此$\{\Omega^\ast_c(\mathbb{R}^n),d\}$是一个复形, 称为**具紧支集的de
Rham复形**.

类似地,
定义$Z^q_c(\mathbb{R}^n)=\{\omega\in\Omega_c^q(\mathbb{R}^n)|d\omega=0\},$
$B^q_c(\mathbb{R}^n)=\{d\tau | \tau\in\Omega_c^{q-1}(\mathbb{R}^n)\},$
$H^q_{c}(\mathbb{R}^n)=Z^q_c(\mathbb{R}^n)/B^q_c(\mathbb{R}^n).$

注意$Z_c^q(\mathbb{R}^n)=\Omega^q_c(\mathbb{R}^n)\cap Z^q(\mathbb{R}^n),$
但一般$B^q_c(\mathbb{R}^n)\neq B^q(\mathbb{R}^n)\cap \Omega_c^q(\mathbb{R}^n).$
即不是$d\tau$有紧支集而是$d\tau$中$\tau$有紧支集.

我们有**紧上同调的Poincaré引理**: $H^q_c(\mathbb{R}^n)=\begin{cases}
        \mathbb{R}\quad&q=n\\
        0&q\neq n
    \end{cases}.$

注意这说明了**紧上同调不是同伦不变量**. 类似地,
我们可对一般的$U\subset \mathbb{R}^n$定义$H_c^\ast(U)$.

微分复形
--------

称向量空间直和$C=\oplus_{q\in\mathbb{Z} } C^q$为**微分复形**,
若有同态$d:C\rightarrow C,$ 满足$d:C^q\rightarrow C^{q+1},$ $d^2=0.$
可以由$d$对复形定义上同调. de Rham复形即为微分复形.

与代数拓扑相同, 我们可定义复形间的链映射及其诱导同态, 复形的短正合列,
以及至关重要的zig-zag引理(图追踪定义同调的长正合列).

文章最后更新于 2021-09-19 18:59:49 
