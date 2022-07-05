---
title: Mazur-Ulam定理
date: 2022-03-24 21:24:47
categories: 
- 命题与定理
- 分析
- 泛函分析
mathjax: true
---

**定理 1**. *$X,Y$为赋范线性空间. 若$\phi:X\rightarrow Y$为等距满射, 则$\phi$为仿射变换.* 

**证:** 首先由于$\phi$是等距变换, $\phi$是单射, 且$\phi$连续. 同时,
$\phi-\phi(0)$也是等距满射. 故不妨设$\phi(0)=0,$
只需验证$\phi$为线性变换. 为此, 只要有$\phi(x+y)=\phi(x)+\phi(y)$即可.
这等价于总有


$$
\phi\left(\frac{x+y}{2}\right)=\frac{\phi\left(x\right)+\phi\left(y\right)}{2}.
$$



$\,\forall\,x,y\in X,$ 记$z=\frac{x+y}{2},$
取$X$上关于$z$点的中心对称变换$\psi(w):=2z-w.$ 那么


$$
|\phi(w)-z|=|w-z|,\quad |\phi(w)-w|=2|w-z|.
$$


取$G$为保持$x,y$两点不动的等距自变换群,
记$\lambda=\sup\{|gz-z|:g\in G\},$ 那么$\,\forall\,g\in G,$


$$
|gz-x|=|gz-gx|=|z-x|,\quad |gz-z|\le |gz-x|+|x-z|=2|z-x|,\quad \lambda<\infty.
$$



定义$g^\ast :=\psi g^{-1}\psi g,$ 那么$\,\forall\,g\in G,$


$$
2|gz-z|=|\psi gz-gz|=|g^{-1}\psi gz-z|=|\psi g^{-1}\psi gz-z|=|g^\ast z-z|\le \lambda.
$$


关于$g$取上确界, 就得到了$\lambda=0.$
从而*所有保持两点不动的等距自变换也保持中点不动.*

接下来,
我们取$\psi'$为$Y$中关于$z':=\frac{\phi(x)+\phi(y)}{2}$的中心对称变换.
此时$h:=\psi\phi^{-1}\psi'\phi$保持$x,y$两点不动, 从而由前面的结论,
$hz=z.$ 具体展开并化简移项得到$\psi'\phi z=\phi z.$
然而中心对称变换$\psi'$的唯一不动点为$z',$ 这就说明$\phi z=z',$
从而命题得证.

参考: https://zhuanlan.zhihu.com/p/24978670

文章最后更新于 2022-03-24 21:24:48 
