---
title: 《PDE2》笔记-特征值问题
date: 2022-12-02 16:40:22
categories: 
- 笔记
- PDE
- PDE2
mathjax: true
---

考虑自共轭算子$S:H_0^1(\Omega)\rightarrow H^{-1}(\Omega),$


$$
Su:=-(a^{ij}u_i+b^ju)_j+b^ju_j+cu.
$$

 系数均在$L^\infty(\Omega)$中,
$a^{ij}\xi_i\xi_j\ge \mu|\xi|^2.$ 我们有双线性有界泛函:


$$
B_S[u,v]=\int_\Omega a^{ij}u_iv_j+b^i(uv_j+vu_j)+cuv=\left<{}Su,v\right>=\left<{}u,Sv\right>=B_S[v,u].
$$


满足能量估计:


$$
B_S[u,u]\ge \frac{\mu}{2}\Vert Du\Vert_{L^2}^2-C(\mu,S)\Vert u\Vert_{L^2}^2.
$$



若存在$(u,\lambda),$ 使得在$H^{-1}(\Omega)$中有$Su=\lambda u,$
则称其为特征对, $\lambda$为特征值, $u$为特征函数.
一个自然的问题是如何找到所有的$\lambda.$

若$\,\exists\,$特征对$(u,\lambda),$ 则$\,\forall\,v\in H_0^1(\Omega),$


$$
B_S[u,v]=\left<{}\lambda u,v\right>=\lambda\int_\Omega uvdx.
$$

 此时,


$$
\lambda=\frac{B_S[u,u]}{\int_\Omega u^2dx}\ge -C(\mu,S).
$$



由此启发, 我们定义


$$
\lambda_1:=\inf_{u\in H_0^1(\Omega)\setminus \{0\} }\frac{B_S[u,u]}{\Vert u\Vert_{L^2}^2}
$$


我们来证明$\lambda_1$为第一特征值. 首先证明它是可以达到的.

**命题 1**. *$\,\exists\,w\in H_0^1(\Omega),$ $B_S[w,w]=\lambda_$* 

$\,\exists\,w_k,$ 满足$\Vert w_k\Vert_{L^2}=1,$ 使得


$$
\lambda_1\le B_S[w_k,w_k]\le \lambda_1+\frac{1}{k}.
$$

 由后面的不等号,
有 

$$
\frac{\mu}{2}\Vert Dw_k\Vert_{L^2}^2\le \lambda_1+1+C(\mu,S).
$$


因此$\{w_k\}$为$H_0^1$中的有界列, 有子列在$L^2$内收敛, $H_0^1$中弱收敛.
不妨设子列为自身, 即$w_k\xrightarrow{L^2}w,$
$w_k\rightharpoonup w\in H_0^1.$
希望证明$B_S[w_k,w_k]\rightarrow B_S[w,w].$ 为此逐项考虑.


$$
|\left<{}w_k,w_k\right>-\left<{}w,w\right>|\le |\left<{}w_k,w_k-w\right>|+|\left<{}w_k-w,w\right>|\le 2\Vert w_k-w\Vert_{L^2}\rightarrow 0
$$




$$
|\left<{}\partial_iw_{k},w_k\right>-\left<{}\partial_i w,w\right>|\le |\left<{}\partial_iw_{k},w_k-w\right>|+|\left<{}\partial_i (w_k-w),w\right>|\le (\Vert Dw_k\Vert_{L^2}+\Vert Dw\Vert_{L^2})\Vert w_k-w\Vert_{L^2}
$$


但是$\left<{}\partial_iw_k,\partial_iw_k\right>$项并不好证明收敛性,
我们转而考虑证明


$$
\varliminf_{k\rightarrow 0}\int a^{ij}\partial_iw_k\partial_jw_k\ge \int a^{ij}w_iw_j.
$$


这样结合前面的收敛就有,


$$
\lambda_1\le B_S[w,w]\le \varliminf_{k\rightarrow 0}B_S[w_k,w_k]=\lambda_1\quad\Rightarrow\quad B_S[w,w]=\lambda_1.
$$



由于$a^{ij}$一致椭圆,
$\int_\Omega a^{ij}u_iv_j$定义了$H_0^1(\Omega)$上的内积$B_a[u,v],$
诱导了范数$\Vert\cdot\Vert_{a}.$ 这时发现想证明的等式恰恰是


$$
\varliminf_{k\rightarrow 0} \Vert w_k\Vert_a\ge \Vert w\Vert_a
$$


那么由弱Sharp连续性, 我们就得到了结论.

**命题 2**. *$Sw=\lambda_1 w\in H^{-1}(\Omega).$* 

定义


$$
f(t)=B_S[w+t\eta,w+t\eta]-\lambda_1\Vert w+t\eta\Vert_{L^2}^2,\quad \,\forall\,\eta\in C_0^\infty(\Omega).
$$


那么$f(t)\ge 0,$ $f(0)=0,$ 在$t=0$处达到极小, 因此$f'(t)=0,$


$$
f'(t)=B_S[w,\eta]-\lambda_1\left<{}w,\eta\right>=0,\quad \left<{}Sw,\eta\right>=\left<{}\lambda_1w,\eta\right>.
$$


由稠密性, 这就证明了命题.

归纳定义特征子空间$(\lambda_m,V_m):$


$$
V_1:=\{w\in H_0^1(\Omega)|Sw=\lambda_1w\},
$$




$$
\lambda_2=\inf_{\substack{u\in H_0^1\setminus\{0\}\\u\perp_{L^2} V_1} }\frac{B[u,u]}{\Vert u\Vert_{L^2}^2},\quad V_2:=\{\cdots\}
$$



**定理 3**. *$\Omega\subset \mathbb{R}^n$为有界开集, $S$系数满足前述条件, 则$S$有无穷多个特征值, 趋于$+\infty.$ 不同特征值对应特征向量$\{w_k\}$在$L^2$中正交, 构成标准正交基. 若$B_S$满足强制性条件, 则$\{\frac{w_k}{\sqrt{\lambda_k} }\}\in H_0^1$在内积$B_S[u,v]$下也构成标准正交基. 此时$u=\sum d_kw_k\in L^2(\Omega),$ 在$H_0^1$中也是.* 

由$S$的对称性, 由谱理论前两个性质正确. 当$B_S$满足强制性条件时,
只需验证若$B_S[u,\frac{w_k}{\sqrt{w_k} }]=0,$
$\,\forall\,k\ge 1$推出$u=0.$
而这可根据$\{w_k\}$是$L^2$下的标准正交基得到. 再后一结论显然.

取$S=-\Delta,$ 特征问题变为 

$$
-\Delta w_k-\lambda w_k=0.
$$


这时由第四章的理论, 可要求


$$
\{w_k\}\subset C^\infty(\Omega)\cap H^2(\Omega)\cap H_0^1(\Omega)\subset H^{m+2}(\Omega).
$$


最后一个包含关系要求$\partial\Omega\in C^m.$

文章最后更新于 2022-12-02 16:40:24 
