---
title: Jacobi公式
date: 2022-01-24 17:40:29
categories: 
- 命题与定理
- 代数
- 高等代数
mathjax: true
---

在学习黎曼几何时遇到了一个计算上的问题, 查阅后才发现居然有这种公式,
感觉很是神奇, 特此记录下来.

**命题 1**. *我们有如下等式成立:* 



$$
\frac{d {}\det(A(t))}{d {}t}=\det(A(t))\operatorname{tr}\left(A(t)^{-1}A'(t)\right),\quad A'(t)=\frac{d {}A(t)}{d {}t}.
$$



**证:** 首先需有公式:


$$
\det(1+\varepsilon A)=1+\varepsilon\operatorname{tr}(A)+O(\varepsilon^2).
$$


利用$\det A=\lambda_1\cdots\lambda_n$即可简单地得到. 接下来,
自然得到另一公式:


$$
\det(A+\varepsilon B)=\det(A)(1+\varepsilon\operatorname{tr}(A^{-1}B)+O(\varepsilon^2)).
$$



现令$A=A(t),$ $B=A'(t),$ 那么,


$$
\frac{d {} }{d {}\varepsilon}\left.\det\left(A(t)+\varepsilon A'(t)\right)\right|_{\varepsilon=0}=\det(A(t))\operatorname{tr}\left(A(t)^{-1}A'(t)\right).
$$


注意若$A(t)=[\alpha_1(t),\cdots,\alpha_n(t)],$ 则:


$$
\frac{d {}\det(A(t))}{d {}t}=\det[\alpha_1'(t),\alpha_2(t),\cdots,\alpha_n(t)]+\cdots+\det[\alpha_1(t),\cdots,\alpha_{n-1}(t),\alpha_n'(t)].
$$


而$A(t)+\varepsilon A'(t)=[\alpha_1(t)+\varepsilon\alpha_1'(t),\cdots,\alpha_n(t)+\varepsilon\alpha_n'(t)],$
将$\frac{d {} }{d {}\varepsilon}\left.\det\left(A(t)+\varepsilon A'(t)\right)\right|_{\varepsilon=0}$按同样方式展开,
得到与$\frac{d {}\det(A(t))}{d {}t}$相同的式子.

从而, 我们有恒等式:


$$
\frac{d {}\det(A(t))}{d {}t}=\det(A(t))\operatorname{tr}\left(A(t)^{-1}A'(t)\right).
$$



参考:
https://terrytao.wordpress.com/2013/01/13/matrix-identities-as-derivatives-of-determinant-identities/

文章最后更新于 2022-01-24 17:40:31 
