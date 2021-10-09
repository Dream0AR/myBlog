---
title: 《代数拓扑与微分形式》笔记(3)-MV序列
date: 2021-09-20 15:04:13
categories: 
- 笔记
- 代数拓扑
- GTM82-代数拓扑与微分形式
mathjax: true
---

Mayer-Vietoris序列是代数拓扑中经典的结论, 对于计算同调群有着莫大的帮助.
它当然也存在于de Rham复形中.

上同调MV序列
------------

### 复形的短正合列

在代数拓扑中我们知道, 若存在复形的短正合列
$$0\rightarrow A\rightarrow B\rightarrow C\rightarrow 0,$$
则由zig-zag引理(图追踪), 可以构造长正合列
$$...\rightarrow H^p(A)\rightarrow H^p(B)\rightarrow H^p(C)\rightarrow H^{p+\varepsilon}(A)\rightarrow ...$$
其中$\varepsilon=\pm 1$, 取决于考虑上同调还是下同调. 因此为了得到MV序列,
我们只需构造出复形的短正合列即可.

设$U,V$为流形$M$的开子集, $M=U\cup V$, $U\cap V$是开的, 其上有到$U$,
$V$的包含映射:
$$\partial_0:U\cap V\rightarrow V, \quad \partial_1:U\cap V\rightarrow U,$$
下标的数字指遗忘第几个位置, 用于在之后考虑更一般的MV序列(可列多个开集).

记$U\sqcup V$为两者做无交并, 也称为拓扑和(因为在同一空间中看,
它们当然是有交的). 注意不是笛卡尔积.
于是有包含映射$U,V\rightarrow M$诱导的映射$U\sqcup V\rightarrow M$,
从而我们有映射列
$$M=U\cup V\leftarrow U\sqcup V\mathop{\leftleftarrows}\limits_{\partial_1}^{\partial_0} U\cap V,$$
这里双箭头指选取其中一个映射, 即事实上我们有两个映射列.
应用反变函子$\Omega^\ast$, 做拉回映射得到
$$\Omega^\ast (M)\rightarrow \Omega^\ast (U)\oplus \Omega^\ast (V)\mathop{\rightrightarrows}\limits_{\partial_1^\ast }^{\partial_0^\ast }\Omega^\ast (U\cap V),$$
上面每个拉回都等价于对微分形式的限制. 为了得到正合列,
我们需适当改造该映射列:
$$0\rightarrow\Omega^\ast (M)\xrightarrow{r}\Omega^\ast (U)\oplus\Omega^\ast (V)\xrightarrow{\delta}\Omega^\ast (U\cap V)\rightarrow 0,$$
其中$r(\omega)=(\omega|_U, \omega|_V)$,
$\delta=\partial_0^\ast -\partial_1^\ast$,
即$\delta(\omega,\tau)=\tau|_{U\cap V}-\omega|_{U\cap V}$. 一般的,
若定义域明了, 方便起见也可简记为$\tau-\omega$.

我们需要验证上述复形列正合.

**证** $r$即为将微分形式分别限制在$U$和$V$上, 很自然它是单射;
由$\delta$的特殊构造, 容易看到在中间项也正合, 只需证$\delta$满.

$\,\forall\,\omega\in \Omega^q(U\cap V)$,
取从属于$\{U,V\}$的单位分解$\{\rho_U,\rho_V\}$, 在$U$上定义
$$\rho_V\omega=
            \begin{cases}
                \rho_V|_{U\cap V}\cdot\omega, \quad & \text{on}\quad U\cap V\\
                0, &\text{on} \quad U-U\cap V       
            \end{cases},$$

这里$\rho_V$定义域是$V$, 在$U$上自然地零延拓至0.
$\omega$定义域是$U\cap V$,
因此此时$\rho_V\omega$扩充到$U$上也可以给定定义, 且是光滑的.

在$V$上类似定义$\rho_U\omega$. 取$\xi=(-\rho_V\omega, \rho_U\omega)$,
则$\delta\xi=\omega$. 从而复形列正合.

### Mayer-Vietoris序列

由zig-zag引理, 短正合列诱导了长正合列
$$\cdots\rightarrow H^q(M)\xrightarrow{r}H^q(U)\oplus H^q(V)\xrightarrow{\delta}H^q(U\cap V)\xrightarrow{d^\ast }H^{q+1}(M)\rightarrow \cdots$$
这里连接同态$d^\ast$的定义由zig-zag引理过程给出: 利用图追踪,
$\omega\Rightarrow \xi=(-\rho_V\omega,\rho_U\omega)$,
再推出$r\eta=d\xi$. $r$就是限制映射, 因此$\eta=
        \begin{cases}
            d(-\rho_V\omega) &\quad\text{on}\quad U\\
            d(\rho_U\omega) &\quad\text{on}\quad V
        \end{cases}$.

在$U\cap V$处, 由$\rho_U+\rho_V=1$, 与$d\omega=0$, 知定义合法.
于是$d^\ast [\omega]=[\eta]$.

注意$\rho_U \omega, \rho_V\omega$ 均不是整体定义在$M$上的,
不一定有$\eta=d\tau$, $\tau\in\Omega^\ast (M)$,
因此$\eta$并不一定是恰当的.

紧支集MV序列
------------

设$f:N\rightarrow M$为光滑映射,
但$f^\ast :\Omega^\ast _c(M)\rightarrow \Omega^\ast _c(N)$一般并不成立,
无法确保将紧支撑的微分形式仍然拉回到紧支撑的微分形式,
如取$f$为投射$(x_1,x_2)\mapsto x_1$. 不过光滑的逆紧映射就可以了,
因为其定义就是满足\"紧集的逆像仍是紧集\"的映射.

一般的, 我们更多考虑的是包含映射: 若有$j: U\rightarrow M$,
定义$j_\ast : \Omega^\ast _c(U)\rightarrow \Omega^\ast _c(M)$,
$j_\ast \omega$为将$\omega$**零延拓**到$M-U$上.
注意这时映射的星号标在下方.

若只考虑开集间的包含映射, $\Omega^\ast _c$成为共变函子. 类似地,
对这个函子也有MV序列,
由包含映射列$U\cap V\mathop \rightrightarrows \limits_{j_U}^{j_V} U\sqcup V\rightarrow M$诱导.
这里双箭头指分别映到$U,V$上. 由此构造出复形的短正合列:
$$0\rightarrow \Omega^\ast _c(U\cap V)\xrightarrow{\delta} \Omega^\ast _c(U)\oplus \Omega^\ast _c(V)\xrightarrow{s} \Omega^\ast _c(M)\rightarrow 0,$$
其中$\delta\omega=(-j_\ast \omega,j_\ast \omega)$,
$s(\omega,\tau)=j_\ast \omega+j_\ast \tau$.

为了证明正合性, 同理只需证明$s$满,
类似地取$\{\rho_U,\rho_V\}$为单位分解,
构造$\rho_U\omega,\rho_V\omega$分别是$U$,$V$上的微分形式就可以了.
由于$\omega$在$M$上有紧支撑, $\rho_U$支集在$U$中,
可证$\rho_U\omega$在$U$上有紧支撑, $\rho_V\omega$同理.

进而由zig-zag引理导出长正合列:
$$\cdots\rightarrow H^q_c(U\cap V)\xrightarrow{\delta} H^q_c(U)\oplus H^q_c(V)\xrightarrow{s} H^q_c(M) \xrightarrow{d_\ast }H^{q+1}_c(U\cap V)\rightarrow \cdots$$
同理可判断连接同态.
图追踪找到$\eta=d(\rho_V\omega)|_{U\cap V}=-d(\rho_U\omega)|_{U\cap V}$,
$d_\ast [\omega]=[\eta]$.

同样的在紧上同调中, $\eta$并不一定恰当.
因为无论是$\rho_U\omega$还是$\rho_V\omega$, 虽然这时有了整体定义,
但限制在$U\cap V$中不一定具有紧支集.

$H^1(S^1)\simeq \mathbb{R}$
---------------------------

看一个简单的例子. 由于$S^1$紧, $H_c^\ast (S^1)=H^\ast (S^1)$.
这时用上同调, 紧上同调的MV序列都可以容易地证出这个命题,
只需将$S^1$切成两半即可.

或者用局部坐标$\theta$, $d\theta$为$S^1$上$1$-形式.
$1$-形式$\omega$恰当时,
$\omega=dF=ad\theta \Leftrightarrow \int_{S^1}\omega=0.$ 因此
$B^1(S^1)=\ker \int_{S^1}.$
注意到$\int_{S^1}:\Omega^1(S^1)\rightarrow \mathbb{R}.$

从而$H^1(S^1)=Z^1(S^1)/B^1(S^1)=\Omega^1(S^1)/\ker \int_{S^1}\cong \mathbb{R}$.

文章最后更新于 2021-10-09 12:32:30 
