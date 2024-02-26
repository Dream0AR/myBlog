---
title: 《代数拓扑2》笔记(22)-Pontrjagin数
date: 2022-12-02 16:39:37
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## Pontrjagin数

对于实流形$M^{4n},$ 为一个定向闭流形, $I=(i_1,\cdots,i_r)$为$n$的划分.
定义第$I$个Pontrjagin数为


$$
P_I[M^{4n}]=\left<{}p_{i_1}\cdots p_{i_r},[M^{4n}]\right>\in \mathbb{Z}.
$$



**注 1**. *记$\overline M$为$M$反定向, $[\overline M]=-[M],$ 但$p_k(\tau_M)=p_k(\tau_{\overline M}),$ 从而$P_I[\overline M]=-p_I[M].$* 

**推论 2**. *若$M^{4n}$ Pontrjagin数非零, 那么不存在反定向的微分同胚$M\rightarrow M.$* 

若$M=\mathbb{C}\mathrm{P}^m,$
$p(\tau_{\mathbb{C}\mathrm{P}^m})=(1+a^2)^{m+1},$ $a=-c_1(\gamma^1),$
$p_k(\mathbb{C}\mathrm{P}^m)=\binom{m+1}{k} a^{2k}\in H^{4k}.$ 若$m=2n,$
则$M^{4n}=\mathbb{C}\mathrm{P}^{2n},$ $\,\forall\,I$为$n$的划分,
$p_{i_1}\cdots p_{i_r}[\mathbb{C}\mathrm{P}^{2n}]=\binom{2n+1}{i_1}\cdots \binom{2n+1}{i_r}\neq 0.$
作为一个推论, $\mathbb{C}\mathrm{P}^{2n}$上不存在反定向的微分自同胚.

对于$m$为奇数的情形, 复共轭是一个反定向的微分自同胚. 注意$m$为奇数时,
没有top Pontrjagin类.

**命题 3**. *若$M^{4n}=\partial V^{4n+1},$ $V$紧定向, 则$M^{4n}$所有的Pontrjagin数为零.* 

**推论 4**. *$\mathbb{C}\mathrm{P}^{2n}\neq \partial V^{4n+1}$(定向), 且有限copy $\sqcup \mathbb{C}\mathrm{P}^{2n}\neq \partial V.$* 

注意对$\mathbb{C}\mathrm{P}^{2n+1}$不对,
有例子$\mathbb{C}\mathrm{P}^1\approx S^2\approx \partial D^3.$

## 对称函数论

回顾$T^n=U(1)^{\times n}\hookrightarrow U(n),$ 映到对角阵中.
这诱导了$BT^n\rightarrow BU(n),$
拉回得到$H^\ast (BT^n;\mathbb{Z})\leftarrow H^\ast (BU(n);\mathbb{Z}),$
$c_i\mapsto \sigma_i(t_1,\cdots t_n).$
$1+\sigma_1+\cdots+\sigma_n=(1+t_1)\cdots (1+t_n).$

记$S=\mathbb{Z}[\sigma_1,\cdots,\sigma_n]=\oplus_{k=0}^\infty S^k,$
$S^k$为$k$次对称多项式. 它的基为


$$
\{\sigma_{i_1}\cdots\sigma_{i_r}|i_1+\cdots+i_r=k,\quad i_j\le n\}.
$$



$$
S^k=\mathbb{Z}\{\sigma_I|I\text{ 为$k$的划分, 每个元小于等于$n$}\}.
$$


称两个单项等价, 若它们差一个置换. 如$t_1t_2^3t_3^5\sim t_4t_7^3t_2^5.$
对$k$划分$I,$ $I$单项对称多项式定义为


$$
m_I:=\sum \text{ 单项等价于 }t^I:=t_1^{i_1}\cdots t_r^{i_r}.
$$


例如$k=3,$ $I=2+1=3,$ $m_I=t_1t_2^2+t_1^2t_2+t_1t_3^2+\cdots.$

**引理 5**. *$\{m_I|\text{$I$为$k$划分, $r\le n$.}\}$构成了$S^k=S^k_{(n)}$的一组$\mathbb{Z}$-基.* 

这组元素显然张成了$S^k.$ 只需检验维数.


$$
\dim_\mathbb{Z}S^k_{(n)}=\#\{\sigma_I\}=\{I|i_j\le n\}.
$$


希望证明它和$\{I|r\le n\}$相等. (都是$k$划分.)

我们发现前者为$n$列以下的Young diagrams with $k$ boxes,
后者为$n$行以下的Young diagrams with $k$ boxes. 例如对于$I=(4,4,3,1,1),$
逆序排列, 像俄罗斯方块一样放置, 那么要求列数不超过$n$.
和它对应的是$I'=(5,3,3,2),$ 同样逆序排列按俄罗斯方块放置,
要求行数不超过$n.$ 它们之间由转置联系. 因此集合数相同.

对于任意$k$划分$I,$


$$
m_I(t_1,\cdots,t_n)\in \mathbb{Z}[t_1,\cdots,t_n]^{S_n}=\mathbb{Z}[\sigma_1,\cdots,\sigma_n].
$$




$$
m_I(t_1,\cdots,t_n)=S_I(\sigma_1,\cdots,\sigma_n).
$$

 可以验证,
$\,\forall\,n<k,$


$$
S_{I,n}(\sigma_1,\cdots,\sigma_n)=S_{I,k}(\sigma_1,\cdots,\sigma_n,0,\cdots,0);
$$


$\,\forall\,n\ge k,$ $S_I$不变.

因此, 若$n\ge k,$
那么$\{m_I\}=\{S_I(\sigma_1,\cdots,\sigma_n)\}$构成了$S^k=\mathbb{Z}[\sigma_1,\cdots,\sigma_n]$的一组$\mathbb{Z}$-基.

例如, $k=1,$ $S_1(\sigma_1)=\sigma_1,$


$$
S_2(\sigma_1,\sigma_2)=\sigma_1^2-2\sigma_2=(t_1+t_2)^2-2t_1t_2=t_1^2+t_2^2=m_2(t_1,t_2).
$$




$$
S_{1,1}(\sigma_1,\sigma_2)=t_1t_2=\sigma_2,
$$

 
$$
S
 _3=\sigma_1^3-3\sigma_1\sigma_2+3\sigma_3.
$$

应用到拓扑上,


$$
H^\ast (BU(n))\rightarrow H^\ast (BU(1)^{\times n})^{S_n},\quad c_i\mapsto \sigma_i(t_1,\cdots,t_n),
$$


$\{c_I|I\text{ 为$k$的划分, }i_j\le n\}$构成了$H^{2k}(BU(n))$的一组$\mathbb{Z}$基.
改变基后, $\{S_I(c_1,\cdots,c_n)|r\le n\}$也是一组$\mathbb{Z}$基.

对秩$n$复向量丛$\omega,$
定义$S_I(c(\omega)):=S_I(c_1(\omega),\cdots,c_n(\omega))\in H^{2n}(B;\mathbb{Z}).$

**引理 6** (Thom). *$S_I(c(\omega\oplus\omega'))=\sum_{JK=I}S_J(c(\omega))S_K(c(\omega')).$* 

考虑$\sigma_k$为$k$基本对称多项式($t_1,\cdots,t_n$),
$\sigma_k'$为$(t_{n+1},\cdots,t_{n+m}),$
$\sigma_k''=\sum_{i=0}^k\sigma_i\sigma_{k-i}',$
验证有$\sigma_k''$为$(t_1,\cdots,t_{n+m})$基本对称多项式. 这样就有


$$
S_I(\sigma_1'',\cdots,\sigma_k'')=\sum_{JK=I} S_J(\sigma)S_K(\sigma').
$$



左侧为$m_I(t_1,\cdots,t_{n+m})=\sum t_{a_1}^{i_1}\cdots t_{a_r}^{i_r},$
令$J:=\{i_q:1\le a_q\le n\},$ $K:=\{i_q:n+1\le a_q\le n+m\},$ $JK=I.$

当$I$作为$k$划分就是$k=k,$ 记$S_k=S_I.$
那么唯一的$JK=I=k$为$J=\varnothing$或$K=\varnothing.$

**推论 7**. *$S_k(c(\omega\oplus\omega'))=S_k(c(\omega))+S_k(c(\omega')).$ $S_k$将和映到和.* 

**注 8**. *形式定义Chern特征$ch(\omega):=n+\sum_{k=1}^\infty \frac{S_k(c(\omega))}{k!}\in H^\pi(B;\mathbb{Q}),$ 那么$ch(\omega\oplus\omega')=ch(\omega)+ch(\omega'),$ $ch(\omega\otimes \omega')=ch(\omega)ch(\omega'),$ 形式上比Chern示性类要好.* 



$$
S_I[K^n]:=\left<{}S_I(c(\tau_K)),[K^n]\right>\in\mathbb{Z}.
$$



**推论 9**. *$S_I$的积公式: 对于$I$为$m+n$划分, $S_I[K^m\times L^n]=\sum_{I_1I_2=I}S_{I_1}[K^m]S_{I_2}[K^n].$* 

$\tau:=\tau_{K^m},$ $\tau':=\tau_{L^n},$
$\tau\times\tau'\cong (\pi_1^\ast \tau)\oplus(\pi_2^\ast \tau').$

$S_I[K\times L]=\left<{}S_I(\tau\times\tau'),[K\times L]\right>.$
由前面的引理即有结果.

文章最后更新于 2022-12-02 16:39:40 
