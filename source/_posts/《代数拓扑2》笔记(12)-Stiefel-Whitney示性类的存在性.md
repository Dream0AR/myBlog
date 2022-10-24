---
title: 《代数拓扑2》笔记(12)-Stiefel-Whitney示性类的存在性
date: 2022-10-24 19:03:57
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## 证明

**定理 1**. *SW示性类存在.* 

只需考虑CW复形$B$上向量丛的的示性类. 不然, 考虑CW逼近$B'\rightarrow B,$
考虑拉回丛即可.
给定向量丛$\xi:\mathbb{R}^n\rightarrow E\xrightarrow{\pi} B,$
考虑投影空间丛$P(\xi):P(\mathbb{R}^n)=\mathbb{R}\mathrm{P}^{n-1}\rightarrow P(E)\xrightarrow{p(\pi)}B,$


$$
P(E)=\{(b,l)|b\in B,l\subset F_b(\xi)\text{ 为直线}\}.
$$


$P(\xi)$为纤维丛. 我们希望应用Leray-Hirsch定理到该丛上.

**定理 2** (Leray-Hirsch). *设$F\xrightarrow{i} E\xrightarrow{p} B$为纤维丛. 取定某个交换环$R,$ 若$H^n(F;R)$为自由有限生成的$R$模, 存在$c_j\in H^\ast (E;R)$使得$\{i^\ast c_j\}$组成了$H^\ast (F;R)\cong R\{c_j\}_j$的一组$R$-基. 那么有如下$H^\ast (B;R)$模同构:* 



$$
H^\ast (B;R)\bigotimes H^\ast (F;R)\cong H^\ast (E;R), \quad \sum_{i,j}b_i\otimes i^\ast (c_j)\mapsto \sum_{i,j}p^\ast (b_i)\cup c_j.
$$



我们验证条件,
$H^i(\mathbb{R}\mathrm{P}^{n-1},\mathbb{Z}_2)=\left<{}a^i\right>$的确自由有限生成,
$a\in H^1,$ $i\le n-1.$ 我们希望说明$i^\ast $满射.
回忆$\,\exists\,\widehat f:E(\xi) \rightarrow \mathbb{R}^\infty,$
使得$\widehat f$在纤维上是线性单射. 那么考虑


$$
\mathbb{R}^n\hookrightarrow E\xrightarrow{\widehat f}\mathbb{R}^\infty,
$$


投影诱导


$$
P(\mathbb{R}^n)\cong \mathbb{R}\mathrm{P}^{n-1}\xrightarrow{i}P(E)\xrightarrow{P(\widehat{f})}\mathbb{R}\mathrm{P}^\infty.
$$


取拉回映射,


$$
H^\ast (\mathbb{R}\mathrm{P}^{n-1})\xleftarrow{i^\ast } H^\ast (P(E))\leftarrow H^\ast (\mathbb{R}\mathrm{P}^\infty).
$$


复合在低维为同构, 因此$i^\ast $满.

于是条件满足, 有$H^\ast (B)$模同构


$$
H^\ast (P(E))\cong H^\ast (B)\otimes H^\ast (\mathbb{R}\mathrm{P}^{n-1})=H^\ast (B)\{1,x,\cdots,x^{n-1}\}.
$$



存在唯一的一组$w_1,w_2,\cdots,w_n\in H^\ast (B),$
使得$x^n=\sum_{i=1}^n w_ix^{n-i}.$ 这被称为投影丛公式.
定义示性类$w_i(\xi):=w_i,$ $i=1,\cdots,n.$ 我们来验证它满足SW类公理.

$w_0(\xi)=1$ ok, 对于自然性, 考虑


$$
E'\rightarrow E\xrightarrow{\widehat f} \mathbb{R}\mathrm{P}^\infty,
$$


这拉回了


$$
H^\ast (\mathbb{R}\mathrm{P}^{n-1})\leftarrow H^\ast (P(E'))\leftarrow H^\ast (P(E))\leftarrow H^\ast (\mathbb{R}\mathrm{P}^\infty).
$$


这就得到了结论. 对于Whitney乘积公式, 定义$E_1=E(\xi),$ $E_2=E(\eta),$
$E_1\oplus E_2=E(\xi\oplus \eta),$ $\dim(\xi)=m,$ $\dim(\eta)=n.$ 考虑


$$
E_i\hookrightarrow E_1\oplus E_2\rightarrow \mathbb{R}^\infty,
$$


拉回了


$$
H^\ast (P(E_i))\leftarrow H^\ast (P(E_1\oplus E_2))\leftarrow H^\ast (\mathbb{R}\mathrm{P}^\infty).
$$



定义$u:=\sum_j w_j(\xi)x^{m-j},$ $v:=\sum_j w_j(\eta)x^{n-j}.$
断言$uv=0.$ 这样就有


$$
w_j(\xi\oplus\eta)=\sum_{r+s=j}w_r(\xi)w_s(\eta).
$$



至于断言, 考虑$P(E_1),P(E_2)\subset P(E_1\oplus E_2),$
$P(E_1)\cap P(E_2)=\varnothing.$ $U_i=P(E_1\oplus E_2)\setminus P(E_j),$
$U_i$形变收缩至$P(E_j).$


$$
H^m(P(E_1\oplus E_2),U_2)\cong H^m(P(E_1\oplus E_2),P(E_1))\rightarrow H^m(P(E_1\oplus E_2))\rightarrow H^m(P(E_1)),
$$


那么$\,\exists\,\widetilde u\mapsto u\mapsto 0.$
类似地取$\widetilde{v}.$
我们有$\widetilde u\cup \widetilde v=0\in H^{m+n}(X,U_1\cup U_2)=0.$
由自然性, 便有$uv=0.$

最后只需验证$w_1(\gamma_1^1)=0\in H^1(\mathbb{R}\mathrm{P}^1).$
$\gamma_1^1:\mathbb{R}^1\rightarrow E\rightarrow \mathbb{R}\mathrm{P}^1$投影诱导了$\mathbb{R}\mathrm{P}^0=\ast \rightarrow P(E)\rightarrow \mathbb{R}\mathrm{P}^1.$
定义$\widehat f:E\rightarrow \mathbb{R}^\infty,$ $(l,v)\mapsto v.$
$P(\widehat f):P(E)\cong \mathbb{R}\mathrm{P}^1\rightarrow \mathbb{R}\mathrm{P}^\infty,$
拉回$H^1(\mathbb{R}\mathrm{P}^1)\leftarrow H^1(\mathbb{R}\mathrm{P}^\infty),$
$\alpha\mapsto x\neq 0.$ 那么$x^1=w_1x^0,$ $x=w_1(\gamma_1^1)\neq 0.$

## 分裂定理

**定理 3**. *对于秩$n$平面丛$\xi,$ 底空间为仿紧集$B.$ 存在一个$F(E),$ $f:F(E)\rightarrow B,$ 使得: $f^\ast \xi$为$F(E)$上线丛的和, 且$f^\ast :H^\ast (B;\mathbb{Z}_2)\rightarrow H^\ast (F(E);\mathbb{Z}_2)$为单射.* 

对$n$归纳, 只需找到$f:F(E)\rightarrow B,$
使得$f^\ast \xi=\eta\oplus \eta^\perp,$ 且$f^\ast $为单射.

取$F(E)=P(E)\rightarrow B,$ $f=p(\pi).$
那么$f^\ast :H^\ast (B)\hookrightarrow H^\ast (P(E))\cong H^\ast (B)\{1,\cdots,x^{n-1}\}$为单射.

考虑全空间


$$
E(f^\ast \xi)=\{(b,l,v)|b\in B, l\subset F_b(\xi),v\in F_b(\xi)\}.
$$


考虑秩$1$子丛 

$$
E(\eta):=\{(b,l,v)|b\in B,l\subset F_b(\xi),v\in l\}.
$$


那么$\eta$就是想找的线丛.

**注 4**. *重复找$n$次线丛, 那么$F(E)=\{(b,l_1,\cdots,l_n)|l_1+\cdots+l_n=F_b\xi\}.$ 那么就有标架丛 

$$
GL_n(\mathbb{R})/(\mathbb{R}^\ast )^n\cong \{frames\}\rightarrow F(E)\rightarrow B,
$$

* 

## 应用

计算$w(\xi\otimes \xi').$ 第一步假设它们都是线丛的和, 那么


$$
w(\xi\otimes \xi')=w\left(\bigoplus_{i,j} L_i\otimes L_j'\right)=\prod_{i,j} w(L_i\otimes L_j').
$$



然后利用分裂定理, 设$f^\ast \xi,f^\ast \xi'$分裂(可以分步来处理,
$f=f_1\circ f_2$), 那么


$$
f^\ast (w(\xi\otimes \xi'))=w(f^\ast (\xi)\otimes f^\ast (\xi'))=F(w(f^\ast (\xi)),w(f^\ast (\eta)))=f^\ast F(w(\xi),w(\eta)).
$$


这样就可以把线丛上的计算方法套到一般丛上. 这也是分裂定理的主要用途之一.

文章最后更新于 2022-10-24 19:04:00 
