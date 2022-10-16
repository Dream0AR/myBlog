---
title: 《代数拓扑2》笔记(9)-Stiefel-Whitney示性类(续)
date: 2022-10-12 15:23:47
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## 回顾

对于向量丛$\xi:$ $\mathbb{R}^n\rightarrow E\rightarrow B,$
$\omega_i(\xi)\in H^i(B;\mathbb{Z}_2),$
$\omega(\xi):=\sum_i \omega_i(\xi).$

我们有例子$\omega(\tau_{S^n})=1,$ $\omega(\gamma_n^1)=1+a,$
$\omega(\gamma^\perp)=\overline\omega(\gamma_n^1)=(1+a)^{-1}=1+a+\cdots+a^n.$

对于$\omega(\tau_{\mathbb{R}\mathrm{P}^n}),$ 我们有引理:

**引理 1**. *$\tau_{\mathbb{R}\mathrm{P}^n}=\operatorname{Hom}(\gamma_n^1,\gamma^\perp)$* 

**命题 2**. *$\tau_{\mathbb{R}\mathrm{P}^n}\oplus\varepsilon^1\cong \gamma_n^1\oplus\cdots\oplus \gamma_n^1$ $(n+1)$个.* 



$$
\tau_{\mathbb{R}\mathrm{P}^n}\oplus\varepsilon^1=\operatorname{Hom}(\gamma_n^1,\gamma^\perp)\oplus \operatorname{Hom}(\gamma_n^1,\gamma_n^1)=\operatorname{Hom}(\gamma_n^1,\gamma^\perp\oplus \gamma_n^1=\varepsilon^{n+1})=\operatorname{Hom}(\gamma_n^1,\varepsilon^1)^{n+1}=(\gamma_n^1)^{n+1}
$$



这样我们得到,
$\omega(\tau_{\mathbb{R}\mathrm{P}^n})=\omega(\gamma_n^1)^{n+1}=(1+a)^{n+1}.$
但注意$a^{n+1}=0.$

**推论 3** (Stiefel). *$\omega(\tau_{\mathbb{R}\mathrm{P}^n})=1$ 当且仅当 $(n+1)=2^k.$* 

## 可除代数

**定理 4** (Stiefel). *假设$\mathbb{R}^n$有一个双线性乘法$p:\mathbb{R}^n\times \mathbb{R}^n\rightarrow\mathbb{R}^n,$ 没有零因子, 那么$n$为$2$的幂次.* 

只需证明若$p$存在, 那么$\tau_{\mathbb{R}\mathrm{P}^{n-1} }$是平凡的.
$\,\forall\,z\neq 0,$
$y\mapsto p(y,z)$给出了$\mathbb{R}^n$到$\mathbb{R}^n$的线性同构.
取一组基$\{e_i\},$ 那么存在同构$v_i:\mathbb{R}^n\cong \mathbb{R}^n,$
使得$v_i(p(y,e_1))=p(y,e_i).$

对任意$L\subset \mathbb{R}^n,$ 定义$\overline v_i:L\rightarrow L^\perp,$
$\overline v_i(x):=pv_i(x),$ $p$为$\mathbb{R}^n$到$L^\perp$的投影.
这样$\overline v_i$给出了一个$\operatorname{Hom}(\gamma_{n-1}^1,\gamma^\perp)\cong \tau_{\mathbb{R}\mathrm{P}^{n-1} }$的一个截面.
验证发现$\{\overline v_i\}_{i\neq 1}$给出了一组标架(线性无关),
故$\tau_{\mathbb{R}\mathrm{P}^{n-1} }$是平凡的. 有前面的推论立即得到结论.

## SW示性类的其它应用

### SW示性类阻碍浸入

**命题 5**. *若$M^n$可以浸入到$\mathbb{R}^{n+k}$中, 则$\overline\omega_i(\tau_M)=0,$ $\,\forall\,i>k.$* 

设有一个浸入, 那么$\tau_M\oplus \nu_M=\varepsilon^{n+k},$
$\omega(\nu)=\overline\omega(\tau).$ 然而$\dim\nu=k,$
这就说明了$\overline\omega_i(\tau)=\omega_i(\nu)=0,$ $\,\forall\,i>k.$

**命题 6**. *若$n=2^r,$ $\mathbb{R}\mathrm{P}^n$可浸入$\mathbb{R}^{n+k},$ 则$k\ge n-1.$* 

$\omega(\tau_{\mathbb{R}\mathrm{P}^n})=(1+a)^{n+1}=(1+a)(1+a^n)=1+a+a^n.$
那么$\overline\omega(\tau_{\mathbb{R}\mathrm{P}^n})=1+a+\cdots+a^{n-1}.$
由命题, $\overline\omega_i(\tau_{\mathbb{R}\mathrm{P}^n})=0,$
$\,\forall\,i>k,$ 故$k\ge n-1.$

### 配边

考虑底空间$B=M^n$为闭流形, $\omega_i(M):=\omega_i(\tau_M).$ 考虑单项式


$$
\omega_1(M)^{r_1}\cdots\omega_n(M)^{r_n}\in H^D(M,\mathbb{Z}_2),\quad D=\sum_{i=1}^n ir_i.
$$



若$D=n,$ 考虑$[M]\in H_n(M),$ 我们就得到了一个数字


$$
\left<{}\omega_1(M)^{r_1}\cdots\omega_n(M)^{r_n},[M]\right>\in \mathbb{Z}_2,
$$


称为Stiefel-Whitney数, 与单项$\omega_1^{r_1}\cdots \omega_n^{r_n}$相关.

**定理 7** (Pontrjagin). *若$M^n$是$(n+1)$维紧流形$V^{n+1}$的边界, 那么所有$M$的SW数都是零.* 

$M=\partial V,$
有$H_{n+1}(V,\partial V)\xrightarrow{\partial} H_n(\partial V),$
$\partial[V]=[M].$ 对偶地, 我们有


$$
\left<{}\delta \alpha,[V]\right>=\left<{}\alpha,\partial[V]\right>=\left<{}\alpha,[M]\right>.
$$


考虑$\tau_V|_M=i^\ast \tau_V,$ $i:M=\partial V\hookrightarrow V.$
注意到$\nu_M^V$是平凡的, 那么$i^\ast \tau_V=\tau_M\oplus\nu_M,$
$i^\ast \omega_k(\tau_V)=\omega_k(i^\ast \tau_V)=\omega_k(\tau_M)$

考虑长正合列 

$$
H^n(V)\rightarrow H^n(M)\rightarrow H^{n+1}(V,M),
$$


$M$的SW数为:


$$
\left<{}\omega_1(M)^{r_1}\cdots\omega_n(M)^{r_n},[M]\right>=\left<{}\delta(\bullet),[V]\right>=\left<{}\delta i^\ast (\omega_1(V)^{r_1}\cdots\omega_n(V)^{r_n}),[V]\right>=0.
$$



**定理 8** (Thom). *逆命题成立.* 

对于两个$n$维光滑闭流形$M_1,M_2,$ 称他们属于相同的**配边类(cobordism
class)**, 若$M_1\sqcup M_2$是一个光滑紧$(n+1)$维流形的边界.

**推论 9**. *$M_1,M_2$属于相同的配边类当且仅当它们的SW数都相同.* 

文章最后更新于 2022-10-12 15:23:48 
