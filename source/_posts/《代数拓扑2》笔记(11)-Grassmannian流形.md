---
title: 《代数拓扑2》笔记(11)-Grassmannian流形
date: 2022-10-24 19:03:40
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## Grassmannian上同调计算

我们希望得到$H^\ast (G_n(\mathbb{R}^\infty);\mathbb{Z}_2)=\mathbb{Z}_2[w_1,\cdots,w_n].$

回忆我们希望给出$G_n(\mathbb{R}^\infty)$上的CW结构. 固定flag:


$$
\mathbb{R}^0\subset \mathbb{R}^1\subset \cdots \subset \mathbb{R}^m.
$$


任意$X\in G_n(\mathbb{R}^m)$给出一个序列:


$$
0\le \dim (X\cap \mathbb{R}^1)\le\cdots\le \dim(X\cap \mathbb{R}^m)=n.
$$



定义Schubert符号$\sigma=(\sigma_1,\cdots,\sigma_n)$记录了序列中跳跃的部分,
$1\le \sigma_1<\cdots<\sigma_n\le m.$


$$
e(\sigma):=\{X\in G_n(\mathbb{R}^m)|\dim (X\cap \mathbb{R}^{\sigma_i})=i,\:\dim(X\cap \mathbb{R}^{\sigma_i-1})=i-1\}.
$$



断言$\{e(\sigma)\}$组成了$G_n(\mathbb{R}^m)$的CW结构.
令$H^k\subset \mathbb{R}^k$为$x_k>0$的上半平面,

**引理 1**. *每个$X\in e(\sigma)$有唯一一个正交基$(x_1,\cdots,x_n)\in H^{\sigma_1}\times\cdots\times H^{\sigma_n}.$* 

只需注意到下面的序列, 由线性空间的基本知识即得.


$$
\dim(X\cap \mathbb{R}^{\sigma_1})=1,\quad \dim(X\cap \mathbb{R}^{\sigma_2})=2,\quad \cdots.
$$





$$
e'(\sigma):=\{(x_1,\cdots,x_n)|\{x_i\}\text{正交, }x_i\in H^{\sigma_i}\}.
$$


对$n$做归纳,
即可得到$\overline e'(\sigma)\cong$维数为$d(\sigma):=\sum_i(\sigma_i-i)$的闭球.
那么映射


$$
\overline e'(\sigma)\ni (x_1,\cdots,x_n)\mapsto \operatorname{span}\{x_1,\cdots,x_n\} \in G_n(\mathbb{R}^m).
$$


将$e'(\sigma)$同胚地映到$e(\sigma)$上. 这就实现了贴胞腔,
给出了$G_n(\mathbb{R}^m)$上的CW结构.

**注 2**. *$G_n(\mathbb{R}^m)$是一个有限CW复形, 有$\binom{m}{n}$个胞腔. 令$m\rightarrow \infty,$ $G_n(\mathbb{R}^\infty)$为一个CW复形.* 

一个问题是$G_n(\mathbb{R}^m)$中有多少个$r$胞腔?
即$\dim e(\sigma)=\sum_i (\sigma_i-i)=r$的Schubert数.
记$\sigma_i-i=\mu_i,$ 那么 

$$
0\le \mu_1\le \cdots\le \mu_n\le m-n,
$$


满足$\sum_i\mu_i=r.$

**推论 3**. *$G_n(\mathbb{R}^m)$的$r$胞腔数为将$r$划分为至多$n$个小于等于$m-n$的正整数的方案数. 也称划分数.* 

**定理 4**. *$H^\ast (G_n;\mathbb{Z}_2)\cong \mathbb{Z}_2[w_1,\cdots,w_n].$* 

我们希望构造一个同构:
$H^\ast (G_n)\xrightarrow{f^\ast }\mathbb{Z}_2[s_1,\cdots,s_n],$
$w_k(\gamma^n)\mapsto s_k.$

考虑$f:(\mathbb{R}\mathrm{P}^\infty)^{\times n}\rightarrow G_n,$
使得$(\gamma^1)^{\times n}=f^\ast \gamma^n.$
我们有$f^\ast :H^\ast (G_n)\rightarrow H^\ast ((\mathbb{R}\mathrm{P}^\infty)^{\times n}).$
注意到$\,\forall\,\tau\in S^n$作用在$(\mathbb{R}\mathrm{P}^\infty)^{\times n}$上,
$\tau^\ast (\gamma^1)^{\times n}\cong (\gamma^1)^{\times n}.$
因此$f\circ \tau$也能够将万有丛拉回. 那么$f\circ \tau\simeq f,$
$\tau^\ast \circ f^\ast =f^\ast .$
即$S_n$在$\operatorname{Im}(f^\ast )\subset H^\ast ((\mathbb{R}\mathrm{P}^\infty)^{\times n})$上作用平凡.

回忆我们有


$$
H^\ast ((\mathbb{R}\mathrm{P}^\infty)^{\times n})\cong H^\ast (\mathbb{R}\mathrm{P}^\infty)^{\otimes n}\cong \mathbb{Z}_2[a_1]\otimes \cdots\otimes \mathbb{Z}_2[a_n]\cong \mathbb{Z}_2[a_1,\cdots,a_n],\quad \deg a_i=1.
$$



我们有对称多项式基本定理,


$$
\mathbb{Z}_2[a_1,\cdots,a_n]=\mathbb{Z}_2[s_1,\cdots,s_n],\quad s_k=s_k(a_1,\cdots,a_n).
$$



断言这诱导了$w_k(\gamma^n)\mapsto s_k(a_1,\cdots,a_n).$ 回忆


$$
w(\gamma^1)=1+a,\quad w((\gamma^1)^{\times n})=(1+a_1)\times\cdots\times (1+a_n)\in H^\ast (\mathbb{R}\mathrm{P}^\infty)^{\otimes n},
$$




$$
w((\gamma^1)^{\times n})=(1+a_1)\cdots(1+a_n)=\sum_{k=0}^n s_k(a_1,\cdots,a_n).
$$



这就给出了$f^\ast w_k(\gamma^n)=w_k(f^\ast \gamma^n)=w_k((\gamma^1)^{\times n})=s_k.$

只需再验证$f^\ast $为单射. 希望证明$\,\forall\,r,$
$\dim H^r(G_n)\le \dim f^\ast H^r(G_n).$ 左侧小于等于$G_n$的胞腔数,
等同于度数为$r$的单项$s_1^{r_1}\cdots s_n^{r_n}$的个数,
又小于等于右侧的维数. 因此的确不等式成立.

特别地, 我们证明完了$f^\ast $是同构, 因此其实是取等.
那么这就说明了Grassmannian流形上的微分都是零.

**注 5**. *每个$e(\sigma)$都表示了$H_\ast (G_n)$中的一个非平凡元. $\dim H_r(G_n)$等于$r$维胞腔数, 与划分数联系. 每个$\mathbb{Z}_2$示性类都是$SW$示性类的乘积. 这也说明了$SW$示性类是唯一的.* 

## SW示性类存在性

**定理 6**. *SW示性类存在.* 

我们有至少四种方式来定义SW示性类.
第一种方式是通过谱序列直接计算$H^\ast (G_n;\mathbb{Z}_2),$
得到$\mathbb{Z}_2[w_1,\cdots,w_n].$ 将生成元拉回就给出了SW类.

第二种方式是通过障碍性理论. 第三种方式是通过Steenrod操作.
第四种方式也是要介绍的方式: 通过Leray-Hirsch定理. 回忆它是这么表述的:

**定理 7** (Leray-Hirsch). *设$F\xrightarrow{i} E\xrightarrow{p} B$为纤维丛. 取定某个交换环$R,$ 若$H^n(F;R)$为自由有限生成的$R$模, 存在$c_j\in H^\ast (E;R)$使得$\{i^\ast c_j\}$组成了$H^\ast (F;R)\cong R\{c_j\}_j$的一组$R$-基. 那么有如下$H^\ast (B;R)$模同构:* 



$$
H^\ast (B;R)\bigotimes H^\ast (F;R)\cong H^\ast (E;R), \quad \sum_{i,j}b_i\otimes i^\ast (c_j)\mapsto \sum_{i,j}p^\ast (b_i)\cup c_j.
$$



文章最后更新于 2022-10-24 19:03:42 
