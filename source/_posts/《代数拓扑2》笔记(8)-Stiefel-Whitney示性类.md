---
title: 《代数拓扑2》笔记(8)-Stiefel-Whitney示性类
date: 2022-10-11 15:12:26
categories: 
- 笔记
- 代数拓扑
- 代数拓扑2
mathjax: true
---

## 基本概念

对于秩$n$实向量丛


$$
\mathbb{R}^n\rightarrow E(\xi)\xrightarrow{\pi}B(\xi),
$$


定义Stiefel-Whitney classes为:


$$
\omega_i(\xi)\in H^i(B(\xi);\mathbb{Z}_2),\quad i=0,1,2,\cdots
$$


满足如下公理:

1. $\omega_0(\xi)=1\in H^0(B(\xi);\mathbb{Z}_2)$; $\omega_i(\xi)=0,$
 $\,\forall\,i>n.$

2. (自然性)对于$f:B(\xi)\rightarrow B(\eta)$由丛映射覆盖($\xi \cong f^\ast \eta$),
 $\omega_i(\xi)=(\omega_i(f^\ast \eta)=)f^\ast \omega_i(\eta).$

3. (Whitney乘积公式) 若$\xi,\eta$为底空间相同的实向量丛,
 那么$\omega_k(\xi\oplus\eta)=\sum_i \omega_i(\xi)\cup \omega_{k-i}(\eta).$

4. 对于$\mathbb{R}\mathrm{P}^1$上的经典线丛$\gamma_1^1,$
 $\omega_1(\gamma_1^1)\neq 0.$

我们后面将看到这样的示性类存在唯一.

## 性质

一些不加证明的简单的性质如下.

1. 若$\xi\cong \eta,$ 则$\omega_i(\xi)=\omega_i(\eta).$

2. 若向量丛$\varepsilon^n$平凡, 则$\omega_i(\varepsilon)=0,$
 $\,\forall\,i>0.$

3. 若向量丛$\varepsilon^n$平凡,
 则$\omega_i(\xi\oplus\varepsilon^n)=\omega_i(\xi).$

**命题 1**. *若$\xi$是欧氏秩$n$实向量丛, 有无处消失截面, 则$\omega_n(\xi)=0.$* 

若$\xi$有无处消失截面, 则$\xi$包含一个平凡秩$1$子向量丛$\varepsilon.$
由欧氏性, $\xi=\varepsilon\oplus \varepsilon^{\perp},$
从而$\omega_n(\xi)=\omega_n(\varepsilon^\perp)=0.$
最后一个等号是因为$\varepsilon^\perp$是秩$n-1$的.

因此我们可以将Stiefel-Whitney classes视为一种阻碍, 若最高维示性类非零,
则$\xi$上一定不存在无处消失截面. 类似地, 我们还有:

**命题 2**. *若$\xi$为欧氏秩$n$实向量丛, 有$k$个处处线性无关截面, 则$\omega_n(\xi)=\cdots=\omega_{n-k+1}(\xi)=0.$* 

## 总SW示性类

定义总SW示性类$\xi$为


$$
\omega(\xi):=1+\omega_1(\xi)+\omega_2(\xi)+\cdots \in H^\ast (B(\xi);\mathbb{Z}_2)\subset H^\pi(B(\xi);\mathbb{Z}_2).
$$


最后一个包含关系指直和包含于直积.

**引理 3**. *$\{\omega:\omega\text{起始系数为$1$}\}\subset H^\pi(B;\mathbb{Z}_2)$ 组成了在杯积下不变的交换子群.* 

只需证每个$\omega$存在逆. 记$\omega=1+\omega_1+\cdots,$
$\overline\omega=1+\overline\omega_1+\cdots,$
为了让$\omega\overline\omega=1,$ 我们需要$\,\forall\,k>0,$


$$
\sum_{i}\omega_i\overline\omega_{k-i}=0.
$$

 故取如下元素作为逆即可.


$$
\overline\omega_k=\omega_1\overline\omega_{k-1}+\cdots+\omega_k.
$$



**命题 4**. *若$\xi,\eta$都是$B$上的向量丛, 使得$\xi\oplus\eta$是平凡的, 那么$\omega(\xi)=\overline\omega(\eta).$* 

证明只需回忆: 

$$
\omega(\xi\oplus\eta)=\omega(\xi)\cup\omega(\eta)=1.
$$



**推论 5** (Whitney对偶). *若$M\subset \mathbb{R}^N$是一个光滑子流形, $\tau$为切丛, $\nu$为法丛, 则$\omega(\nu)=\overline\omega(\tau).$* 

只需注意到: 

$$
\tau\oplus\nu\cong T\mathbb{R}^N|_M=\varepsilon.
$$



## 计算SW类

对于标准球面$S^n,$ 法丛平凡, 因此切丛的SW类平凡.
需要注意到偶数维球面上切丛非平凡,
因此SW类最高维为零也不见得有处处非零截面.

考虑$\gamma_n^1$为$\mathbb{R}\mathrm{P}^n$上的经典线丛, 我们有:


$$
\omega(\gamma_n^1)=1+a,\quad a\neq 0\in H^1(\mathbb{R}\mathrm{P}^n;\mathbb{Z}_2).
$$



考虑$\mathbb{R}^2\hookrightarrow \mathbb{R}^{n+1},$
诱导了$\mathbb{R}\mathrm{P}^1\hookrightarrow \mathbb{R}\mathrm{P}^n,$
由丛映射覆盖. 这就得到了结论.

令$\mathbb{R}^{n+1}$具标准度量,
$\gamma^\perp$为$\mathbb{R}\mathrm{P}^n$上的向量丛,
每根纤维是经典线丛纤维的正交补.
那么$\gamma^\perp\oplus \gamma_n^1=\varepsilon,$ 从而


$$
\omega(\gamma^\perp)=\overline\omega(\gamma_n^1)=(1+a)^{-1}=1+a+\cdots+a^n.
$$


特别地, $\omega_i(\gamma^\perp)=a^i\neq 0,$
$a^i\in H^i(\mathbb{R}\mathrm{P}^n).$

## SW类的应用

### 可除代数

**定理 6** (Stiefel). *设$\mathbb{R}^n$有双线性乘法$p:\mathbb{R}^n\times\mathbb{R}^n\rightarrow \mathbb{R}^n,$ 没有零因子, 则$n$是$2$的幂次.* 

我们分为如下两部分来证明:

1\. 假设乘法存在, 那么切丛$\tau_{\mathbb{R}\mathrm{P}^{n-1} }$平凡.

2\. 若$\tau_{\mathbb{R}\mathrm{P}^{n-1} }$平凡, 则$n$为$2$的幂次.

**引理 7**. *$\mathbb{R}\mathrm{P}^n$上的切丛有同构$\tau_{\mathbb{R}\mathrm{P}^n}\cong \operatorname{Hom}(\gamma_n^1,\gamma^\perp).$* 

构造


$$
E(\tau_{\mathbb{R}\mathrm{P}^n})=\{\pm(x,v)\in S^n\times \mathbb{R}^{n+1}||x|=1,x\cdot v=0.\}
$$



那么每个对$(x,v)$决定了一个函数$f\in \operatorname{Hom}(L,L^\perp),$
$L:=[x]\cong \mathbb{R}^1,$ $f(\lambda x)=\lambda v.$
验证发现$(x,v)\mapsto f$就给出了引理中的同构.

**命题 8**. *$\tau_{\mathbb{R}\mathrm{P}^n}\oplus \varepsilon^1\cong \gamma_n^1\oplus \cdots\oplus \gamma_n^1,$ $n+1$个.* 

$\tau\oplus \varepsilon^1\cong \operatorname{Hom}(\gamma_n^1,\gamma^\perp)\oplus \operatorname{Hom}(\gamma_n^1,\gamma_n^1)\cong \operatorname{Hom}(\gamma_n^1,\gamma^\perp\oplus \gamma_n^1)=\operatorname{Hom}(\gamma_n^1,\varepsilon)^{\oplus (n+1)}\cong (\gamma_n^1)^{\oplus(n+1)}$

文章最后更新于 2022-10-11 15:12:27 
