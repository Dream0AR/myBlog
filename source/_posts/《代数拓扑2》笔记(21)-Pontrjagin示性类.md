---
title: 《代数拓扑2》笔记(21)-Pontrjagin示性类
date: 2022-12-01 10:09:53
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## Pontrjagin类

回顾实向量丛$\xi$可以复化为$\xi\otimes_\mathbb{R}\mathbb{C},$
与它的共轭丛同构. 定义第$i$个Pontrjagin示性类为


$$
p_i(\xi):=(-1)^ic_{2i}(\xi\otimes \mathbb{C})\in H^{4i}(B;\mathbb{Z}).
$$


用总Pontrjagin类: 

$$
p(\xi)=1+p_1(\xi)+\cdots+p_{[\frac{n}{2}]}(\xi).
$$


由于它来自于Chern类, 它也满足如下性质:


$$
p(\xi\oplus \eta)=p(\xi)\cup p(\eta)+2 \text{ torsions},
$$

 即


$$
2[p(\xi\oplus\eta)-p(\xi)\cup p(\eta)]=0.
$$



一个例子是$\tau_{S^n}\oplus\nu_{S^n}\cong \varepsilon^{n+1},$
$p(\tau_{S^n})=p(\tau_{S^n}\oplus\varepsilon^1)=1+2\text{ torsions}.$
但由于$H^\ast (S^n)$为自由$\mathbb{Z}$-模, 挠当然是零.

**注 1**. *复化可表示为: 

$$
O(n)\hookrightarrow U(n),\quad A\mapsto A\otimes_\mathbb{R}\mathbb{C}(=A).
$$

 这诱导了$BO(n)\rightarrow BU(n),$ 拉回得到$H^{4i}(BO(n);\mathbb{Z})\leftrightarrow H^{4i}(BU(n);\mathbb{Z}),$ $c_{2i}\mapsto (-1)^ip_i.$* 

## 实向量丛, 复向量丛与定向实向量丛

一个实向量丛复化后得到一个复向量丛,
一个复向量丛可以忘掉复结构成为定向实向量丛,
定向实向量丛又可以忘掉定向成为实向量丛. 从实向量丛$\xi$出发,
转一圈我们得到的是$(\xi\otimes \mathbb{C})_\mathbb{R}\cong \xi\oplus\xi.$
一个复向量丛$\omega$转一圈得到的是$\omega_\mathbb{R}\otimes \mathbb{C}\cong \omega\oplus\overline\omega.$
只需验证纤维上$x\mapsto (x,-ix)$给出了同构即可.

这样,


$$
(1+c_1+\cdots+c_n)(1-c_1+\cdots \pm c_n)=c(\omega)c(\overline\omega)=c(\omega_\mathbb{R}\otimes \mathbb{C})=p^{\pm}(\omega_\mathbb{R})=1-p_1+\cdots\pm p_n.
$$



**推论 2**. *复向量丛的Chern类决定了它实化的Pontrjagin类, 即* 



$$
p_k(\omega_\mathbb{R})=c_k^2-2c_{k-1}c_{k+1}+\cdots\pm 2c_1c_{2k-1}\mp 2c_{2k}
$$



**注 3**. *上面的三个转换化为结构群理论, 为$U(n)\rightarrow SO(2n)\rightarrow O(2n)\rightarrow U(2n).$ 那么拉回映射就是$(-1)^ic_{2i}\mapsto p_i\rightarrow$推论结论右侧.* 

取$\tau:=\tau_{\mathbb{C}\mathrm{P}^n},$
我们希望研究$p_k(\tau_{\mathbb{C}\mathrm{P}^n}).$
回忆$c(\tau)=(1+a)^{n+1},$
$a=-c_1(\gamma_n^1)\in H^2(\mathbb{C}\mathrm{P}^n).$
这是通过如下过程得到:


$$
\tau_{\mathbb{C}\mathrm{P}^n}\cong \operatorname{Hom}(\gamma^1,(\gamma^1)^\perp),
$$




$$
\tau_{\mathbb{C}\mathrm{P}^n}\oplus \varepsilon^1\cong \operatorname{Hom}(\gamma^1,\varepsilon^{n+1})\cong \operatorname{Hom}(\gamma^1,\varepsilon^1)^{\oplus (n+1)}
$$


令$p_k:=p_k(\tau_\mathbb{R}),$ 那么


$$
1-p_1+\cdots\pm p_n=c(\tau)c(\overline\tau)=(1-a^2)^{n+1},
$$




$$
p=1+p_1+\cdots+p_n=(1+a^2)^{n+1},\quad p_k=\binom{n+1}{k}a^{2k}\neq 0.
$$



从一个实定向丛$\xi$出发,
我们转一圈得到$(\xi\otimes \mathbb{C})_\mathbb{R}.$
我们已经知道$(\xi\otimes \mathbb{C})_\mathbb{R}\cong \xi\oplus\xi.$
但不清楚的是定向是否发生改变?

取$(v_1,\cdots,v_n)$为$\xi_b$的正定向基, $b\in B.$
那么$(v_1,iv_1,\cdots,v_n,iv_n)$为$(\xi\otimes \mathbb{C})_\mathbb{R}$的正定向基.
但$\xi\oplus\xi$自然的正定向基为$(v_1,\cdots,v_n,v_1,\cdots,v_n).$
它们之间差了$\binom{n}{2}$次置换.

**命题 4**. *$(\xi\otimes \mathbb{C})_\mathbb{R}\cong \xi\oplus\xi$保持定向当且仅当$\binom{n}{2}$为偶数.* 

'

**推论 5**. *若$\xi$为秩$2n$实向量丛, 则$p_n(\xi)=e(\xi)^2\in H^{4n}(B;\mathbb{Z}).$* 

$p_n(\xi)=(-1)^nc_{2n}(\xi\otimes\mathbb{C})=(-1)^ne(\xi\otimes\mathbb{C}).$
由推论, 这等于 $(-1)^ne(\xi\oplus \xi)(-1)^{\binom{2n}{2} }=e(\xi)^2.$

**注 6**. *通过BG理论, 我们事实上给出了$SO(n)\rightarrow O(n)\rightarrow U(n)\rightarrow SO(2n),$ 拉回得到$H^\ast BSO(2n)\rightarrow H^\ast BSO(n),$ $p_n\mapsto e^2.$* 

## 万有丛



$$
\{\pm 1\}\cong \frac{O(n)}{SO(n)}\rightarrow BSO(n)\rightarrow BO(n),
$$



$$
BSO(n)\cong \widetilde G_n=\{X|X\subset \mathbb{R}^\infty, \text{秩$n$定向}\}.
$$


**定理 7**. *令$R$为i.d., $\frac{1}{2}\in \mathbb{R},$ 那么* 



$$
H^\ast (\widetilde G_{2m+1};R)\cong R[p_1,\cdots,p_m],\quad H^\ast (\widetilde G_{2m};R)\cong R[p_1,\cdots,p_{m-1},e],
$$





$$
p_i=p_i(\widetilde\gamma^n),\quad e=e(\widetilde\gamma^n)
$$

 等价的,

$$
H^\ast (\widetilde G_n;R)=R[p_1,\cdots,p_{[\frac{n}{2}]},e]|\text{$n$为奇数时$e=0,$ $n$为偶数时$e=p^2_{\frac{n}{2} }$}.
$$


**推论 8**. *对上述的$R,$* 



$$
H^\ast (G_n;R)=R[p_1,\cdots,p_{\frac{n}{2} }].
$$



## 应用

我们将证明:

1. 不存在一个反定向的微分同胚$\mathbb{C}\mathrm{P}^{2n}\rightarrow \mathbb{C}\mathrm{P}^{2n}.$

2. $\mathbb{C}\mathrm{P}^{2n}\neq \partial V^{2n+1}.$

3. $\mathbb{C}\mathrm{P}^{2n}\not\cong X\times Y,$ $X,Y$都不是点.

我们的工具是Chern, Pontrjagin数.

考虑$n$-划分$I=(i_1,\cdots,i_r),$ $i_1+\cdots+i_r=n.$
取$I,J$分别为$n,m$划分, 那么

$$
IJ:=(i_1,\cdots,i_r,j_1,\cdots,j_s),\quad IJ\text{为$n+m$划分}.
$$


定义一个$I$的加细为$I'=I_1\cdots I_r,$ 使得$I_j$为$i_j$划分, $j\le r$.
定义划分数$p(n)=n$划分个数.

对于$n$维闭复流形$K^n,$ $I=(i_1,\cdots,i_r),$ 定义第$I$个Chern数为


$$
c_I[K^n]:=\left<{}c_{i_1}\cdots c_{i_r},[K^n]\right>_K\in \mathbb{Z},
$$


$c_i=c_i(\tau_K).$ 等价地, 定义$f$为$\tau_K$的分类映射:


$$
f:K\rightarrow G_n(\mathbb{C}^\infty),\quad f^\ast \gamma^n=\tau_K.
$$




$$
f_\ast [K]\in H_{2n}(G_n;\mathbb{Z}).
$$




$$
c_I[K^n]=\left<{}c_{i_1}\cdots c_{i_r},f_\ast [K]\right>_{G_n}.
$$


由于$H^\ast (G_n;\mathbb{Z})=\mathbb{Z}[c_1,\cdots,c_n],$
$\{c_I\}$组成了$H^{2n}(G_n;\mathbb{Z})$的一组$\mathbb{Z}$-基(秩为$p(n)$),
Chern数$\{c_I[K]:I\in n\}\subset \mathbb{Z}$完全决定了$f_\ast [K]\in H_{2n}(G_n;\mathbb{Z}).$

文章最后更新于 2022-12-01 10:09:56 
