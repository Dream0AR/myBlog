---
title: 环面上的Laplacian
date: 2023-09-05 19:32:28
categories: 
- 命题与定理
- 几何
- 黎曼几何
mathjax: true
---

对于$T^n=\mathbb{R}^n/A\mathbb{Z}^n,$ $A=[v_1,\cdots,v_n],$
考虑$-\Delta$的特征函数$f.$ 断言


$$
f_w(v)=e^{2\pi i \left<{}v,w\right>},\quad w\in (A\mathbb{Z}^n)^\ast .
$$


为$w$对应的特征函数, $(A\mathbb{Z}^n)^\ast =(A^T)^{-1}\mathbb{Z}^n.$


$$
-\Delta f=4\pi^2e^{2\pi i\left<{}v,w\right>}|\nabla \left<{}v,w\right>|^2=4\pi^2 |w|^2 f,
$$


于是对应特征值为$\lambda_w=4\pi^2 |w|^2.$

由Stone-Weierstrass定理, 特征函数张成的子空间在连续函数空间中稠密.
从而这就是全体的特征函数了.

https://math.stackexchange.com/questions/830849/eigenfunctions-of-the-laplace-beltrami-operator-of-a-torus

文章最后更新于 2023-09-05 19:32:30 
