---
title: Myers-Steenrod定理
date: 2022-03-24 15:24:32
categories: 
- 命题与定理
- 几何
- 黎曼几何
mathjax: true
---

一开始看到流形上的等距变换, 自然想到保持范数$\Leftrightarrow$保持内积,
从而保持黎曼度量. 但事实上等距(依照初始定义)保持的是流形上的距离,
而不是切空间上的距离, 因此这件事情是需要来证明的. 更重要的一点是,
前述的等价关系仅对线性变换成立,
而切映照是线性变换建立在映照可微的基础上.
事实上我们不需要事先要求等距变换可微, 这就是Myers-Steenrod定理.

**定理 1**. *若$\phi:M\rightarrow N$为等距满射, 则$\phi$为同构, 特别地它是光滑的.* 

**证:** 由于测地线有局部极短性, 等距变换将测地线映至测地线.
设$\phi(p)=q,$ 选取$v\in T_pM,$ $|v|$充分小.
取从$p$点出发以$v$为初始切向量的测地线$\gamma,$
那么$d(p,\gamma(1))=|v|.$ 由于$\phi$是等距变换,
$d(q,\phi\circ\gamma(1))=|v|.$ 若$\phi$可微,
那么由于$\phi\circ\gamma$也是测地线,
$|v|=|(\phi\circ\gamma)'(0)|=|d\phi(v)|.$
此时$d\phi$是保持范数的线性变换, 因此$d\phi$保持内积, 即保持黎曼度量,
故$\phi$是同构.

当$\phi$不见得可微时, 由于$\phi$保持测地线,
我们可以通过测地线的切向量来定义$d\phi:T_pM\rightarrow T_pN,$
它也是保持范数的. 但此时它不见得是线性变换, 不过我们可以来证明这一点.
假设已知如下结论:


$$
\lim_{A,B\rightarrow 0\in T_pM}\frac{d(\exp_p(A),\exp_p(B))}{|A-B|}=1.
$$



选取$A,B\in T_pM,$ 取对应的测地线$\gamma_A,\gamma_B.$ 记$A'=d\phi(A),$
$B'=d\phi(B),$ 以及对应的测地线$\gamma_{A'},\gamma_{B'},$
我们有$d(\gamma_A(t),\gamma_B(t))=d(\gamma_{A'}(t),\gamma_{B'}(t)),$
从而:


$$
1=\lim_{t\rightarrow 0}\frac{d(\exp_p(tA),\exp_p(tB))}{t|A-B|}=\lim_{t\rightarrow 0}\frac{d(\exp_q(tA'),\exp_q(tB'))}{t|A-B|}=\frac{|A'-B'|}{|A-B|},
$$


因此$|d\phi(A)-d\phi(B)|=|A-B|,$ $\,\forall\,A,B\in T_pM.$
由Mazur-Ulam定理, 结合$d\phi(0)=0,$ 便说明$d\phi$是线性变换,
从而命题得证.

**引理 2**. *$\lim\limits_{A,B\rightarrow 0\in T_pM}\frac{d(\exp_p(A),\exp_p(B))}{|A-B|}=1.$* 

**证:** 我们首先证明如下事实, 对曲线$c:I\rightarrow T_pM,$
若$|c'|$保持有界,


$$
\lim_{c(I)\rightarrow 0}\frac{l(\exp_p(c))}{l(c)}=1.
$$



我们有$l(c)=\int |c'|,$
$l(\exp_p(c))=\int |d\exp_p(c'(t))|_{\exp_p(c(t))}.$
由于$d\exp_p$在原点处为恒等变换, 同时$g$是光滑的,
$T_{\exp_p(c(t))}M$与$T_pM$度量在$c(I)\rightarrow 0$时充分接近,
$l(\exp_p(c))=l(c)+o(l(c)),$ 由此即知事实成立.

接下来, 记$\gamma$为连接$A,B$的曲线, 使得$\exp_p(\gamma)$为测地线;
$\xi$为连接$A,B$的直线. 那么 

$$
|A-B|=l(\xi)\le l(\gamma),
$$




$$
d(\exp_p(A),\exp_p(B))=l(\exp_p(\gamma))\le l(\exp_p(\xi)).
$$



因此,


$$
\frac{l(\exp_p(\gamma))}{l(\gamma)}\le \frac{d(\exp_p(A),\exp_p(B))}{|A-B|}=\frac{l(\exp_p(\gamma))}{l(\xi)}\le \frac{l(\exp_p(\xi))}{l(\xi)}.
$$



当$A,B\rightarrow 0\in T_pM$时, 两侧趋于$1,$ 从而中间项也趋于$1.$

参考: https://ncatlab.org/nlab/show/Myers-Steenrod+theorem

文章最后更新于 2022-03-24 15:24:34 
