---
title: 《现代PDE基础》笔记(1)-广义函数
date: 2021-10-13 14:45:14
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

基本概念
--------

### 多重指标

$\alpha\in \mathbb{N}^n,$ $|\alpha|=\sum \alpha_i,$
$\alpha!=\prod \alpha_i !.$ 作为上标, $x^\alpha=\prod x_i^{\alpha_i}$
$\partial^\alpha=\frac{\partial^{|\alpha|} }{\partial x_1^{\alpha_1}\cdots\partial x_n^{\alpha_n} },$
$f^{(\alpha)}(x)=\partial^\alpha f(x).$
$f(x)$的Taylor展开为$\sum_\alpha \frac{f^{(\alpha)}(0)}{\alpha!}x^\alpha.$

$\partial^\alpha(fg)=\sum_{\beta+\gamma=\alpha}\binom{\alpha}{\beta \:\gamma}\partial^\beta f\partial^\gamma g.$
当$f,g$满足适当条件时, 一个有趣的证明是考虑Fourier变换,
利用二项式展开先证明$\xi^\alpha (\widehat{f}\ast \widehat{g})=\sum_{\beta+\gamma=\alpha}\binom{\alpha}{\beta \:\gamma}(\xi^\beta \widehat{f})\ast (\xi^\gamma \widehat{g}),$
再做Fourier逆变换即可.

### 基本空间

取光滑函数空间$\mathscr{E}(\mathbb{R}^n)=C^\infty(\mathbb{R}^n),$
拓扑规定为,
若序列$\{\varphi_v\}\in C^\infty(\mathbb{R}^n)$满足$\,\forall\,K\Subset \mathbb{R}^n, \alpha \in \mathbb{N}^n,$
$\sup_{x\in K}|\partial^\alpha \varphi_v|\rightarrow 0,$
则称$\varphi_v\rightarrow 0(C^\infty(\mathbb{R}^n)).$
这样的空间是拓扑线性空间, 可以看作有多个(半)模.
元素趋于零需要求所有(可列多个)模均趋于零. 由于难以找到一个统一的模,
因此它和Banach空间有所区别.

取紧支撑光滑函数空间$\mathscr{D}(\mathbb{R}^n)=C_c^\infty(\mathbb{R}^n),$
拓扑规定为,
若序列$\{\varphi_v\}\in C_c^\infty(\mathbb{R}^n)$支集落在共同紧集$K$内,
且$\,\forall\,\alpha\in \mathbb{N}^n,$
$\sup_{x\in K}|\partial^\alpha \varphi_v|\rightarrow 0,$
则称$\varphi_v\rightarrow 0(C_c^\infty(\mathbb{R}^n)).$

取速降函数空间$\mathscr{S}(\mathbb{R}^n),$
为满足$\lim\limits_{|x|\rightarrow \infty}x^\alpha\partial^p\varphi(x)=0,$
$\,\forall\,\alpha,p\in \mathbb{N}^n$的光滑函数全体. 拓扑规定为,
若序列$\{\varphi_v\}\in \mathscr{S}(\mathbb{R}^n)$满足$\,\forall\,\alpha,p\in \mathbb{N}^n,$
$\sup_{x\in \mathbb{R}^n}|x^\alpha\partial^p \varphi_v(x)|\rightarrow 0,$
则称$\varphi_v\rightarrow 0(\mathscr{S}(\mathbb{R}^n)).$

速降函数的条件也可等价地改为有界, 或将$x^\alpha$替换为$(1+|x|^2)^k,$
以便于处理. 速降函数空间的拓扑也类似. 和前两个空间一样,
速降函数空间也关于卷积封闭.

取$\varphi(x)=\begin{cases}
                e^{\frac{1}{|x|^2-1} },&|x|<1\\
                0,&|x|\ge 1.
            \end{cases},$
$\alpha(x)=\frac{1}{\int_{\mathbb{R}^n} \varphi dx}\varphi(x).$
令$\beta_R=1_{B_R}\ast \alpha,$
则$\operatorname{supp}\beta_R\subset B_{R+1},$
且$\beta_R|_{B_{R-1} }\equiv 1.$
从而$\,\forall\,\varphi\in C^\infty(\mathbb{R}^n),$
取$\varphi_\nu=\beta_\nu\varphi\in C_c^\infty(\mathbb{R}^n),$
满足$\varphi_\nu\rightarrow \varphi(C^\infty(\mathbb{R}^n)).$
因此$C_c^\infty(\mathbb{R}^n)$在$C^\infty(\mathbb{R}^n)$中稠密. 类似地,
它在$\mathscr{S}(\mathbb{R}^n)$中也稠密.

对于$\mathscr{D}(\mathbb{R}^n)\subset \mathscr{S}(\mathbb{R}^n)\subset \mathscr{E}(\mathbb{R}^n),$
前面的空间在后面的空间中稠密, 而前面的拓扑比后面的拓扑强.

### 正则化

对$\Omega$上的函数$u(x),$ 称其**局部可积**,
若其在任意紧集$K\Subset \Omega$上Lebesgue可积.
取$\alpha_\varepsilon=\frac{1}{\varepsilon^n}\alpha(\frac{x}{\varepsilon})\in C_c^\infty(\mathbb{R}^n),$
令$u_\varepsilon=u\ast \alpha_\varepsilon.$
若$u$局部可积则$u_\varepsilon$由定义, 满足如下定理:

**定理 1.1**. *若$u\in L_{loc}^1(\mathbb{R}^n),$ 则$u_\varepsilon\in C^\infty(\mathbb{R}^n).$ 当$\varepsilon\rightarrow 0$时, 若$u\in C^0(\mathbb{R}^n),$ 则$u_\varepsilon\rightarrow u(C^0(\mathbb{R}^n));$ 若$u\in L^p(\mathbb{R}^n),$ 则$u_\varepsilon\rightarrow u(L^p(\mathbb{R}^n)).$* 

前两个性质是易证的. 对$u\in L^p(\mathbb{R}^n)$的情况, 运用Lusin定理,
找$v\in C_c(\mathbb{R}^n)$使得$\parallel u-v\parallel_{L^p}$充分小即可.
过程中用到如下引理:

**引理 1.2** (Minkowski积分不等式). *$\parallel\parallel f(x,y)\parallel_{L_x^1}\parallel_{L_y^p}\le \parallel\parallel f(x,y)\parallel_{L_y^p}\parallel_{L_x^1}.$* 

**证:**
只需证明(可能需要限制在子空间上)线性算子$\mathrm{id}:L_x^1L_y^p\rightarrow L_y^pL_x^1$是有界的,
且$\parallel\mathrm{id}\parallel\le 1.$ 由泛函分析知识,
赋范线性空间间的线性算子$A:X\rightarrow Y$是有界的当且仅当$A^\ast :Y^\ast \rightarrow X^\ast $是有界的,
且有$\parallel A\parallel=\parallel A^\ast \parallel.$ 左推右是经典的命题,
右推左只需利用$A^{\ast \ast }$即可, 它是$A$在$X^{\ast \ast }$上的延拓.

因此考虑线性算子$\mathrm{id}^\ast :L_y^qL_x^\infty\rightarrow L_x^\infty L_y^q,$
说明$\parallel\mathrm{id}^\ast \parallel\le 1$即可,
即$\operatorname{ess}\operatorname{sup}_x\parallel f(x,y)\parallel_{L_y^q}\le \parallel\operatorname{ess}\operatorname{sup}_x|f(x,y)|\parallel_{L_y^q},$
然而这是显然的.

若$\parallel\parallel f(x,y)\parallel_{L_x^1}\parallel_{L_y^p}=\infty,$
考虑用$g_n=(|f|\wedge n)\cdot 1_{B_n}$逼近,
利用Levi单调收敛引理说明即可.

**推论 1.3**. *$\parallel f\ast g\parallel_{L^p}\le \parallel f\parallel_{L^p}\parallel g\parallel_{L^1}.$* 

**证:**
$\parallel f\ast g\parallel_{L^p} \le \parallel\parallel f(x-y)g(y)\parallel_{L^1_y}\parallel_{L^p_x}\le \parallel\parallel f(x-y)g(y)\parallel_{L^p_x}\parallel_{L^1_y}=\parallel f\parallel_{L^p}\parallel g\parallel_{L^1}.$

由该推论,
$\parallel u_\varepsilon-v_\varepsilon\parallel\le \parallel u-v\parallel$也充分小,
而$\parallel v-v_\varepsilon\parallel$利用已有的性质也可以充分小,
定理得证.

称线性算子$J_\varepsilon:L_{loc}^1(\mathbb{R}^n)\rightarrow C^\infty(\mathbb{R}^n),$
$u\mapsto u_\varepsilon$为**磨光算子**,
得到$u_\varepsilon$的过程称为**正则化**.
定理说明$C^\infty(\mathbb{R}^n)$在$C^0(\mathbb{R}^n),L^p(\mathbb{R}^n)$中*稠密*,
从而$C_c^\infty(\mathbb{R}^n), \mathscr{S}(\mathbb{R}^n)$也在其中稠密.

一些简单的推论是,
$J_\varepsilon\in \mathfrak{B}(L^p(\mathbb{R}^n)\rightarrow L^p(\mathbb{R}^n));$
$u\in \mathscr{D}/\mathscr{S}/\mathscr{E}(\mathbb{R}^n)$时,
$u_\varepsilon\rightarrow u(\mathscr{D}/\mathscr{S}/\mathscr{E}(\mathbb{R}^n)).$

磨光算子的一个基本应用是对开集$\Omega,$ $\,\forall\,K\Subset \Omega,$
$\,\exists\,\varphi\in C_c^\infty(\mathbb{R}^n),$
$\operatorname{supp}\varphi\subset \Omega,$ $\varphi \in [0,1],$
且$\varphi|_K\equiv 1.$ 取$\varepsilon=d(K,\Omega^c)>0,$
取$J_{\frac{\varepsilon}{4} } (1_{d(x,K)\le \frac{\varepsilon}{2} })$即可.

广义函数
--------

### 定义

称$\mathscr{D}/\mathscr{S}/\mathscr{E}(\mathbb{R}^n)$上的*线性连续泛函*为$\mathscr{D}'/\mathscr{S}'/\mathscr{E}'(\mathbb{R}^n)$广义函数.
我们有关系式$\mathscr{D}'\supset \mathscr{S}'\supset \mathscr{E}',$
这里包含通过嵌入来看.
如$\mathrm{id}:\mathscr{S}'\rightarrow \mathscr{D}'$不仅有意义,
而且是单射.
有意义是因为在$\mathscr{D}\subset \mathscr{S}\subset \mathscr{E}$中,
前者拓扑强于后者; 单射通过前面的空间在后面的空间稠密保证.

类似地, 可以在开集$\Omega$上定义$\mathscr{D}',\mathscr{E}'$广义函数,
但$\mathscr{S}'$广义函数只在$\mathbb{R}^n$上讨论.
容易说明$L_{loc}^1\subset \mathscr{D}',$
而Dirac函数$\delta\in \mathscr{E}'.$

我们知道在赋范线性空间上, 线性泛函有界$\Leftrightarrow$连续,
但在拓扑线性空间上, 没有统一的模, 因此并没有"有界"的概念.
不过类似的命题依然成立, 可以由"一些模"控制.

**定理 1.4**. *若$T\in \mathscr{D}'(\Omega),$ 则$\,\forall\,K\Subset \Omega,$ $\,\exists\,C(K)>0,$ $m(K)\in \mathbb{N},$ 使得 $$|\left<{}T,\varphi\right>|\le C(K)\sup_{x\in \Omega,|\alpha|\le m}|\partial^\alpha \varphi(x)|, \,\forall\,\varphi\in C_c^\infty(K)\subset C_c^\infty(\Omega).$$*  *反之若$T$为满足上述条件的线性泛函, 则它是连续的, $T\in \mathscr{D}'(\Omega).$* 

**证:**
定义$|\varphi|_\nu=\sup\limits_{x\in \Omega,|\alpha|\le \nu} |\partial^\alpha \varphi(x)|,$
满足$|\varphi|_\nu\le |\varphi|_\mu,$ $\,\forall\,\nu\le \mu.$
若$T\in \mathscr{D}'(\Omega)$不满足命题性质,
则$\,\exists\,K\Subset \Omega,$ $\{\varphi_\nu\}\in C_c^\infty(K),$
使得$|\left<{}T,\varphi_\nu \right>|>\nu|\varphi_\nu|_\nu.$
对$\varphi_\nu$做乘子使$|\left<{}T,\varphi_\nu\right>|=1,$
则$|\varphi_\nu|_\nu<\frac{1}{\nu}.$
容易看出这样有$\varphi_\nu\xrightarrow{\mathscr{D} } 0,$
但$|\left<{}T,\varphi_\nu\right>|\equiv 1,$
$\left<{}T,\varphi_\nu\right>\not\rightarrow 0,$ 矛盾.

反之若$T$为满足条件的线性泛函,
$\,\forall\,\varphi_\nu\xrightarrow{\mathscr{D} } 0,$
$\,\exists\,K$使得$\{\varphi_\nu\}\in C_c^\infty(K).$
由条件有对应的$C(K),m(K),$
使得$|\left<{}T,\varphi_\nu\right>|\le C|\varphi_\nu|_m\rightarrow 0.$
因此$\left<{}T,\varphi_\nu\right>\rightarrow 0,$
$T\in \mathscr{D}'(\Omega).$

**定理 1.5**. *若$T\in \mathscr{E}'(\Omega),$ 则$\,\exists\,K\Subset \Omega,$ $C>0,$ $m\in \mathbb{N},$ 使得 $$|\left<{}T,\varphi\right>|\le C\sup_{x\in K,|\alpha|\le m}|\partial^\alpha \varphi(x)|, \,\forall\,\varphi\in C^\infty(\Omega).$$*  *反之若$T$为满足上述条件的线性泛函, 则它是连续的, $T\in \mathscr{E}'(\Omega).$* 

**证:** 取紧集$K_\nu=B_\nu\cap \{x:d(x,\Omega^c)\ge \frac{1}{\nu}\},$
则$K_\nu$递增且$\bigcup K_\nu=\Omega.$ $\,\forall\,K\Subset \Omega,$
$\,\exists\,N>0,$ $\,\forall\,\nu>N,$ $K\subset K_\nu.$

定义$|\varphi|_\nu=\sup\limits_{x\in K_\nu,|\alpha|\le \nu} |\partial^\alpha \varphi(x)|,$
满足$|\varphi|_\nu\le |\varphi|_\mu,$ $\,\forall\,\nu\le \mu.$
同上一定理可证明$T\in \mathscr{E}'(\Omega)$时满足命题性质.

反之若$T$为满足条件的线性泛函,
$\,\forall\,\varphi_\nu\xrightarrow{\mathscr{E} } 0,$ 取使性质成立的$K,$
那么$\sup_{x\in K}|\partial^\alpha\varphi(x)|\rightarrow 0,$
$\,\forall\,\alpha\in \mathbb{N}^n.$
因此$|\left<{}T,\varphi_\nu\right>|\le C\sup\limits_{x\in K,|\alpha|\le m}|\partial^\alpha\varphi_\nu(x)|\rightarrow 0.$
因此$\left<{}T,\varphi_\nu\right>\rightarrow 0,$
$T\in \mathscr{E}'(\Omega).$

可以看出, $\mathscr{D}',\mathscr{E}'$满足某种对偶关系:
在$\mathscr{D}$中, 函数有紧支集, 收敛性要求有一共同紧集,
因此其上的线性泛函连续性条件适当放宽,
对不同紧集上的紧支撑函数分别满足某种有界性即可; 而在$\mathscr{E}$中,
函数无紧支集, 收敛性要求对任意紧集满足一定条件即可,
这导致其上线性泛函连续性条件变严格, 有界性需由一紧集控制,
且要求对所有光滑函数一致地满足有界性.
这便是$\mathscr{D}\subset \mathscr{E}\rightarrow \mathscr{D}'\supset \mathscr{E}'.$
这种对偶关系在下一节会有更强的表现.

### 支集

对广义函数来说, 它在特定点的取值意义不明确, 但可以谈论它在开集上的取值.
对$T\in \mathscr{D}'(\Omega),$ 给一开集$\Omega'\subset \Omega,$
若$\,\forall\,\varphi\in C_c^\infty(\Omega'),$
$\left<{}T,\varphi\right>=0,$ 则称$T$在$\Omega'$上取零值.
进一步称$T_1,T_2$在$\Omega'$上取值相同, 若$T_1-T_2$在$\Omega'$上取零值.
因此若某个广义函数和一常义函数(诱导的线性连续泛函)在一开集上取值相同,
则可以说该广义函数在该开集上等于这一常义函数.

若常义函数点点取零则整体为零, 类似地若广义函数点点小邻域上取值为零,
则整体取零. 证明上, 只需利用*单位分解定理*.
对$\varphi\in C_c^\infty(\Omega),$
取单位分解$\{\varphi_i\}$从属于覆盖$\operatorname{supp}\varphi$的有限个小邻域组成的开覆盖$\{O_i\}$.
那么$\varphi_i \varphi\in C_c^\infty(O_i),$
且在整个$\Omega$上$\sum_i \varphi_i\varphi=\varphi.$
那么广义函数作用在$\varphi$上可分解到$\{O_i\}$上进行,
再线性组合取值即可. 零值作和仍为零, 故广义函数在全空间上取零值.

由这一性质, 广义函数在取零值的全体开集之并上仍取零值.
而全体开集之并仍为开集, 因此可以定义广义函数取零值的最大开集.
那么称该最大开集的补集为该广义函数的**支集**,
记为$\operatorname{supp}T.$ 对连续函数$f(x),$
容易看出其作为广义函数的支集与原本定义的支集是相同的.
因此广义函数支集的定义是连续函数支集定义的延伸.

**定理 1.6**. *任意$T\in \mathscr{E}'(\Omega)$具紧支集; 反之任意具紧支集$T\in \mathscr{D}'(\Omega),$ $T$也在$\mathscr{E}'(\Omega)$中.* 

**证:** 由上节定理, $\,\forall\,T\in \mathscr{E}'(\Omega),$
$\,\exists\,K\Subset \Omega,$ $C>0,$ $m\in \mathbb{N},$ 使得
$$|\left<{}T,\varphi\right>|\le C\sup\limits_{x\in K,|\alpha|\le m}|\partial^\alpha\varphi(x)|,\,\forall\,\varphi\in C^\infty(\Omega),$$
我们说明该$K$包含$T$的支集, 从而支集是紧的. 而这是容易的,
因为只要$\operatorname{supp}\varphi\subset \Omega\setminus K,$
不等式右端即为零, 从而迫使$T$在$\Omega\setminus K$上取零值, 支集在$K$内.

反之, 若$T\in \mathscr{D}'(\Omega)$,
我们希望将其定义域从$\mathscr{D}(\Omega)$延拓为$\mathscr{E}(\Omega),$
为此需想办法将光滑函数改造为紧支撑的, 且不改变泛函取值.
自然想到利用其支集即可. 记$\operatorname{supp}T=K\Subset \Omega$,
那么取$K\Subset \Omega_1\Subset \Omega,$
作$\zeta\in C_c^\infty(\overline{\Omega}_1),$
$\zeta\in[0,1]$且$\zeta|_{\overline{O}_\delta(K)}\equiv 1.$

对$\varphi\in C^\infty(\Omega),$
定义$\left<{}T,\varphi\right>=\left<{}T,\zeta\varphi\right>,$
$\zeta\varphi\in C_c^\infty(\overline{\Omega}_1).$ 需验证定义的合理性:
若还有$\eta\in C_c^\infty(\overline{\Omega}_2),$
$\eta\in [0,1]$且$\eta|_{\overline{O}_{\varepsilon}(K)}\equiv 1,$
那么$\zeta-\eta\in C_c^\infty(\Omega \setminus K),$
支集落在广义函数支集外,
从而$\left<{}T,\zeta\varphi\right>-\left<{}T,\eta\varphi\right>=\left<{}T,(\zeta-\eta)\varphi\right>=0.$

这样泛函就可以作用在$\varphi$上, 且由上节关于$\mathscr{D}'$的定理,
$$|\left<{}T,\varphi\right>|\le C|\zeta\varphi|_m\le C'\sup_{x\in \Omega_1,|\alpha|\le m}|\partial^\alpha\varphi|,$$
那么由关于$\mathscr{E}'$的定理,
$T$改造为$\mathscr{E}$上线性泛函后也是连续的,
即$T\in \mathscr{E}'(\Omega).$

由此可见$\mathscr{D}'_c=\mathscr{E}',$
这与$\mathscr{D}=\mathscr{E}_c$构成对偶, 十分赏心悦目.
可以看成为了让$\left<{}T,\varphi\right>$合理, 一侧条件弱时,
另一侧条件要强. 证明中后半部分即是在说,
为了让$T\in \mathscr{D}'_c$可以作用在$\mathscr{E}$中的$\varphi$上,
只需考虑在$\varphi|_{\operatorname{supp}T}$部分上的作用即可,
因为其余的部分落在支集外. 就具体操作而言, 不能直接进行限制,
需要利用证明中的方法改造为具紧支集函数.

事实上, 对(用于改造$\varphi$的)辅助函数$\zeta,$
可以将要求替换为$\zeta|_K=1.$
这是因为$\overline{O}_\delta(K)$的$\delta$可任意小,
可以取到$\zeta_\delta\xrightarrow{\mathscr{D} }\zeta,$
再利用线性泛函的连续性即可($T\in \mathscr{D}'$).

文章最后更新于 2021-10-13 12:46:51 
