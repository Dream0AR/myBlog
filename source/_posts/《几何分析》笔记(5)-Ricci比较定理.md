---
title: 《几何分析》笔记(5)-Ricci比较定理
date: 2022-09-26 19:08:03
categories: 
- 笔记
- 几何
- 几何分析
mathjax: true
---

## 准备工作

令$M_k$为$n$维单连通黎曼流形, 截面曲率恒为$k,$ 即空间形式.
令$V_k(r)$为半径为$r$的球的体积, $S_k(r)$为其球面面积. 记


$$
g=dr^2+sn_k^2(r)g_{S_{n-1} }
$$

 
$$
sn_k(r)=\left\{
 \begin{aligned}
 &\frac{\sin\sqrt{k}r}{\sqrt{k} },&&k>0\\
 &r,&&k=0\\
 &\frac{\sin\sqrt{-k}r}{\sqrt{-k} },&&k<0
 \end{aligned}\right.
$$
 $sn_k(r)$是方程$f''+kf=0,$ $f(0)=0,$
$f'(0)=1$的解. 记$r(x)=d(x,p),$ 那么


$$
\Delta r(x)=(n-1)\frac{sn_k'(r)}{sn_k(r)}.
$$




$$
dV_g=sn_k^{n-1}dr_ndS^{n-1}.
$$


取$M$为$\operatorname{Ric}\ge (n-1)K$的流形, 那么对于其上的$r(x),$


$$
\Delta r_k\ge \Delta r,\quad sn_{k}^{n-1}(r)\ge \Theta(r,\theta).
$$


一些结论是, $r(x)\in W_{loc}^{1,p}\cap C^0,$ $\,\forall\,p.$
这就是Ricci比较定理. 由Bishop在$S_p$上给出了证明.
Gromov将其推广到整体上, 统称Bishop-Gromov定理.
它在证明Gromov-Hausdorff定理中起到了重要的作用.

**引理 1**. *记$\omega$为体积形式, $r=d(x,p).$ 那么,* 



$$
L_{\partial r}\omega=\Delta r\omega,\quad \frac{\partial {}\Theta}{\partial {}r}=\Delta r\Theta,\quad x\in S_p.
$$



取平行标准正交基$\{e_i\},$ $\nabla_ie_j=0.$ $\{\theta_i\}$为对偶基. 那么


$$
\omega=\theta^1\wedge\cdots\wedge\theta^n.
$$




$$
L_{\partial_r}\omega=(L_{\partial_r}\theta^1)\wedge\theta^2\wedge\cdots\wedge \theta^n+\cdots+\theta^1\wedge\cdots\wedge \theta^{n-1}\wedge (L_{\partial_r}\theta^n).
$$


$$
\begin{aligned}
 (L_{\partial_r}\theta^i)(X)=&\frac{\partial {}\theta^i(X)}{\partial {}r}-\theta^i(L_{\partial_r}X)\\
 =&\frac{\partial {}\theta^i(X)}{\partial {}r}-\theta^i(\nabla_{\partial_r}X)+\theta^i(\nabla_X\partial_r)\\
 =&(\nabla_{\partial_r}\theta^i)(X)+\theta^i(\nabla_X\partial_r)\\
 =&\theta^i(\nabla_X\partial_r)
 \end{aligned}
$$

从而,


$$
L_{\partial_r}\theta^i=\theta^i(\nabla_{e_k}\partial_r)\theta^k.
$$




$$
L_{\partial_r}\omega=\theta^k(\nabla_{e_k}\partial_r)\omega=\operatorname{tr}(Hess_r)\omega=\Delta r\omega.
$$


$$
\begin{aligned}
 Hess_f(X,Y)&=XY(f)-d_f(\nabla_XY)\\
 &=X\left<{}Y,\nabla_gf\right>-\left<{}\nabla_gf,\nabla_XY\right>\\
 &=\left<{}Y,\nabla_X\nabla_gf\right>.
 \end{aligned}
$$
 那么对于体积元,


$$
\omega=\Theta dr\wedge dS^{n-1},\quad \Delta r\omega=L_{\partial r}\omega=\frac{\partial {}\Theta}{\partial {}r}dr\wedge dS^{n-1}=\frac{\partial {}\Theta}{\partial {}r}\frac{\omega}{\Theta}.
$$



## 比较定理

对于$r(x)=d(x,p)\in C^\infty(S_p\setminus\{p\}),$
$|\nabla_gr(x)|^2\equiv 1.$ $\Delta_g|\nabla_gr|^2=0.$ 由Bochner公式,


$$
2|Hess_f|^2+2\left<{}\nabla_g\Delta_g r,\nabla_g r\right>+2\operatorname{Ric}(\nabla_gr,\nabla_gr)=0,
$$




$$
\frac{\partial {}\Delta r}{\partial {}r}+|Hess_r|^2=-\operatorname{Ric}(\partial_r,\partial_r),
$$


由于


$$
Hess_r(\partial_r,X)=\left<{}\nabla_{\partial_r}\partial_r,X\right>=0,\quad |Hess_r|^2\ge \frac{(\operatorname{tr}Hess_r)^2}{n-1}=\frac{(\Delta_gr)^2}{n-1}.
$$


结合$\operatorname{Ric}\ge (n-1)K,$ 我们有:


$$
\frac{\partial {}\Delta r}{\partial {}r}+\frac{(\Delta r)^2}{n-1}\le -(n-1)K.
$$


记$f(r)=\Delta_gr,$ 则 

$$
f'+\frac{f^2}{n-1}\le -(n-1)K.
$$


考虑$r=0$附近的渐进形态. 记$r=|x|,$ 局部我们有: 
$$
\begin{aligned}
 \Delta_gr&=g^{ij}\left(\frac{\partial^2 {}r}{\partial {}x_i\partial {}x_j}-\Gamma_{ij}^k\frac{\partial {}r}{\partial {}x_k}\right)\\
 &=\delta^{ij}\frac{\partial^2 {}r}{\partial {}x_i\partial {}x_j}+(g^{ij}-\delta^{ij})\frac{\partial^2 {}r}{\partial {}x_i\partial {}x_j}-\Gamma_{ij}^k\frac{\partial {}r}{\partial {}x_k}=\frac{1}{r}+O(r).
 \end{aligned}
$$

接下来我们分类讨论:

### $K>0$



$$
f'\le -((n-1)K+\frac{f^2}{n-1}),\quad \frac{f'}{(n-1)^2K+f^2}\le -\frac{1}{n-1}.
$$



两边积分, 利用$\arctan$即可得到,


$$
f\le (n-1)\frac{\cos\sqrt{k}r}{\sin\sqrt{k}r}
$$



### $K=0$



$$
f'+\frac{f^2}{n-1}\le 0,\quad f'\le 0.
$$



取$T=\min\{t|f(t)=0\}\in (0,+\infty].$


$$
f|_{[T,+\infty)}\le 0\quad\Rightarrow\quad f|_{[T,+\infty)}\le \frac{n-1}{r}=(n-1)\frac{sn_0'(r)}{sn_0(r)}.
$$



所以只需分析$(0,T)$上的情况.


$$
\frac{f'}{f^2}+\frac{1}{n-1}\le 0,\quad \left(\frac{1}{f}\right)'\ge \frac{1}{n-1},\quad \frac{1}{f(r)}\ge \frac{r-r_0}{n-1}+\frac{1}{f({r_0})}.
$$



### $K<0$



$$
f'\le -(n-1)K-\frac{f^2}{n-1},\quad T=\min\{t|-(n-1)K-\frac{f^2}{n-1}=0\}.
$$


那么 

$$
-(n-1)K-\frac{f^2}{n-1}|_{(0,T)}< 0
$$

 记


$$
I=\{t|-(n-1)K-\frac{f^2}{n-1}< 0\}
$$

 那么在$I$上,
记$\varphi=(n-1)\frac{sn_k'(r)}{sn_k(r)},$ 使得有:


$$
\frac{f'}{-(n-1)K-\frac{f^2}{n-1} }\ge 1=\frac{\varphi'}{-(n-1)K-\frac{\varphi^2}{n-1} }.
$$


记$F'(t)=\frac{1}{-(n-1)K-\frac{t^2}{n-1} },$ 它在$I$上取负.
那么$F$单调递减,


$$
(F(f))'\ge (F(\varphi))',\quad \lim_{r\rightarrow 0}F(f)=\lim_{r\rightarrow 0}F(\varphi)\in (0,+\infty).
$$




$$
F(f)\ge F(\varphi),\quad f\le \varphi,\quad in\,[0,T].
$$



记$\alpha(r)=f(r)-\varphi(r).$ 设$\alpha(r_0)>0.$
定义$r_1=\max\{r| r<r_0,\alpha(r)=0\}.$ 在$(r_1,r_0)$上,


$$
-(n-1)K<\frac{\varphi^2}{n-1}<\varphi<f.
$$


因此$-(n-1)K-\frac{f^2}{n-1}<0,$ $(r_1,r_0)\subset I.$
由同样的方法可以分析出其上有$f(r)\le \varphi(r),$ 矛盾.
从而$\alpha(r)\le 0,$ 即$f\le \varphi.$

综上, 我们证明了定理:

**定理 2**. *对$\operatorname{Ric}\ge (n-1)K$的完备黎曼流形$M,$ $\,\forall\,x\in S_p\setminus\{p\},$ 我们有:* 



$$
\Delta r(x)\le (n-1)\frac{sn_k'(r)}{sn_k(r)}.
$$



文章最后更新于 2022-09-26 19:08:06 
