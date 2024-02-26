---
title: 《几何专题》笔记(5)-Chern-全纯形式
date: 2023-03-16 15:52:13
categories: 
- 笔记
- 几何
- 几何专题
mathjax: true
---

## 常平均曲率极小子流形

设


$$
Q=q(dz)^2,\quad q=\lambda^2 \widehat H,\quad \widehat H=\frac{1}{2}(h_{11}-h_{22})-ih_{12}.
$$


那么$q$就是想要的全纯形式.


$$
h\left(\frac{\partial {} }{\partial {}z},\frac{\partial {} }{\partial {}z}\right)=\frac{1}{4}\lambda^2(h_{11}-h_{22}-2ih_{12})=\frac{1}{2}q.
$$


回忆 

$$
h_{ijk}\theta_k=dh_{ij}+h_{kj}\theta_{ki}+h_{ik}\theta_{kj},
$$


$$
\begin{aligned}
 dh_{11}&=2h_{12}\theta_{12}+h_{111}\theta_1+h_{112}\theta_2,\\
 dh_{12}&=-(h_{11}-h_{22})\theta_{12}+h_{121}\theta_1+h_{122}\theta_2,\\
 dh_{22}&=-2h_{12}\theta_{12}+h_{221}\theta_1+h_{222}\theta_2.
 \end{aligned}

$$
 
$$

\begin{aligned}
 d\widehat H=&\frac{1}{2}(dh_{11}-dh_{22})-idh_{12}\\
 =&\frac{1}{2}[(h_{111}-h_{221})\theta_1+(h_{112}-h_{222})\theta_2+4h_{12}\theta_{12}]-i[h_{121}\theta_1+h_{122}\theta_2-(h_{11}-h_{22})\theta_{12}]\\
 =&h_{111}\theta_1+h_{112}\theta_2+2h_{12}\theta_{12}-ih_{112}\theta_1+ih_{111}\theta_2+i(h_{11}-h_{22})\theta_{12}\\
 =&h_{111}(\theta_1+i\theta_2)-ih_{112}(\theta_1+i\theta_2)+2i\widehat H\theta_{12}\\
 =&(h_{111}-ih_{112})\lambda dz+2i\widehat H\theta_{12}
 \end{aligned}

$$
 
$$

\begin{aligned}
 dq=&2\lambda d\lambda \widehat H+\lambda^2d\widehat H\\
 =&2\lambda \widehat H[-i\lambda\theta_{12}+\Lambda_1 dz]+\lambda^2[(h_{111}-ih_{112})\lambda dz+2i\widehat H\theta_{12}]\\
 =&(*)dz
 \end{aligned}
$$
 从而$q$为全纯形式, 若亏格为零, 则$q=0,$
$h_{11}=h_{22},$ $h_{12}=0.$ $k_1=k_2,$ 因此为球面.

## Chern-Walfson

考虑$x:M^2\hookrightarrow X,$ $X$为$(2+p)$维常截面曲率$c$的黎曼流形.


$$
h\left(\frac{\partial {} }{\partial {}z},\frac{\partial {} }{\partial {}z}\right)=\frac{1}{4}(h_{11}-h_{22}-2ih_{12}).
$$


定义


$$
q=\left<{}h(\partial_z,\partial_z),h(\partial_z,\partial_z)\right>,\quad Q=q(dz)^4.
$$



**定理 1**. *若$x:M\rightarrow X$为极小曲面, $X$为常曲率黎曼流形. 那么$Q=qdz^4$为全纯形式.* 

记 

$$
H_\alpha=h_{1\alpha 1}+ih_{1\alpha 2}.
$$




$$
q=\lambda^4\overline H_\alpha^2.
$$

 若有


$$
d\overline H_\alpha ^2=4i\overline H_\alpha^2 \theta_{12}+(\ast )dz
$$

 则
$$
\begin{aligned}
 dq=&4\lambda^3d\lambda \overline H_\alpha ^2+\lambda^4d\overline H_\alpha^2\\
 =&4\lambda^3\overline H_\alpha^2[-i\lambda\theta_{12}+\Lambda_1dz]+\lambda^4[4j\overline H_\alpha^2\theta_{12}+(*)dz]\\
 =&(**)dz
 \end{aligned}.
$$
 命题得证. 因此只要证明前面的式子.



$$
\theta_{1\alpha}=h_{1\alpha 1}\theta_1+h_{1\alpha 2}\theta_2,
$$




$$
\theta_{2\alpha}=h_{2\alpha 1}\theta_1+h_{2\alpha 2}\theta_2.
$$




$$
h_{i\alpha jk}\theta_k=dh_{i\alpha j}+h_{k\alpha j}\theta_{ki}+h_{i\alpha k}\theta_{kj}+h_{i\beta j}\theta_{\beta\alpha}.
$$




$$
h_{i\alpha jk}=h_{i\alpha kj}.
$$





$$
d\overline H_\alpha^2=2\overline H_\alpha d\overline H_\alpha =2\overline H_\alpha d(h_{1\alpha 1}-ih_{1\alpha 2})
$$


$$
\begin{aligned}
 h_{1\alpha 1k}\theta_k=&dh_{1\alpha 1}+2h_{k\alpha 1}\theta_{k1}+h_{1\beta 1}\theta_{\beta\alpha}\\
 =&dh_{1\alpha 1}+2h_{2\alpha 1}\theta_{21}+h_{1\beta 1}\theta_{\beta\alpha}
 \end{aligned}
$$


$$
dh_{1\alpha 1}=h_{1\alpha 11}\theta_1+h_{1\alpha 12}\theta_2+2h_{2\alpha 1}\theta_{12}-h_{1\beta 1}\theta_{\beta\alpha}.
$$




$$
dh_{1\alpha 2}=h_{1\alpha 21}\theta_1+h_{1\alpha 22}\theta_2+h_{2\alpha 2}\theta_{12}-h_{1\alpha 1}\theta_{12}-h_{1\beta 2}\theta_{\beta\alpha}
$$




$$
d\overline H_\alpha ^2=2\overline H_\alpha (2i\theta_{12}\overline H_\alpha+h_{1\alpha 11}(\theta_{1}+i\theta_2)-ih_{1\alpha 12}(\theta_1+i\theta_2)-(h_{1\beta 1}-ih_{1\beta 2})\theta_{\beta\alpha})
$$




$$
d\overline H_\alpha^2=4i\overline H_\alpha\theta_{12}+2\overline H_\alpha (h_{1\alpha 11}-ih_{1\alpha 12})\lambda dz.
$$


这就给出了结论.

文章最后更新于 2023-03-16 15:52:14 
