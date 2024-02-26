---
title: 《微分拓扑》复习笔记(4)-Brouwer不动点定理
date: 2023-06-12 15:19:21
categories: 
- 笔记
- 几何
- 微分拓扑
mathjax: true
---

## Brouwer不动点定理

**引理 1**. *设$M$为紧致光滑带边流形, 则不存在保持边界的光滑映射$f:M\rightarrow \partial M.$* 

不然, 由Sard定理, 存在$f^{-1}(q)$为$1$维紧致带边子流形, 有偶数个端点. 而


$$
\partial (f^{-1}(q))=f^{-1}(q)\cap \partial M=\{q\},
$$

 矛盾.

**引理 2**. *设$f:B^n\rightarrow B^n$为光滑映射, 则存在不动点$x\in B^n.$* 

不然, 取$g(x)=x+t\frac{x-f(x)}{|x-f(x)|},$
$t>0$使得$g(x)\in S^{n-1}$即可. 这是与前一引理矛盾的映射.

**定理 3** (Brouwer不动点定理). *任何闭圆盘到自身的连续映射有不动点.* 

不然, 由光滑函数逼近连续映射, 构造矛盾.

## 一维光滑流形分类

**引理 4**. *设$f:I\rightarrow M,$ $g:J\rightarrow M$为$M$的两个弧长参数表示, 则$f(I)\cap g(J)$至多有两个连通分支. 若有一个连通分支, 弧长参数可延拓到$f(I)\cup g(J)$上. 若有两个连通分支, 则$M$微分同胚于$S^1.$* 

证明考虑$g^{-1}\circ f$的图像. 由此可证明分类定理.

**定理 5**. *任何连通的一维光滑流形微分同胚于圆周$S^1$或区间$\{0,1\}.$* 

## Brouwer区域不变性定理

**定理 6** (区域不变性). *若$U\subset \mathbb{R}^n$为开集, $f:U\rightarrow \mathbb{R}^n$为连续单射, 则$f(U)$为$\mathbb{R}^n$的开集.* 

**定理 7** (维数不变性). *设$U\subset \mathbb{R}^n,$ $V\subset \mathbb{R}^m$为开集. 若$m\neq n,$ 则$U,V$不同胚.* 

设$n>m,$ 考虑映射$U\approx V\hookrightarrow \mathbb{R}^n$为连续单射,
与Brouwer区域不变性定理矛盾.

区域不变性定理由如下定理得证.

**定理 8**. *设$f:B^n\rightarrow \mathbb{R}^n$为连续单射, 则$f(0)$为$f(B^n)$内点.* 

**引理 9** (零点稳定性). *设$f:B^n\rightarrow \mathbb{R}^n$为任意连续映射. 若连续映射$h:f(\mathbb{R}^n)\rightarrow \mathbb{R}^n$满足$|h(f(x))-x|\le 1,$ $\,\forall\,x\in B^n,$ 则$\,\exists\,x_0\in B^n,$ 使得$h(f(x_0))=0.$* 

取$g:=\mathrm{id}-h\circ f$即可, 由Brouwer不动点定理得证.

对于定理证明, 用反证法, 若$f(0)$不是内点,
则总存在$c\in \mathbb{R}^n\setminus f(B^n)$靠近$f(0).$
由此构造无零点的映射逼近逆映射即可.

文章最后更新于 2023-06-12 15:19:22 
