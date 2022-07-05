---
title: 论文笔记-图上大范围Ricci曲率
date: 2021-11-16 12:56:18
categories: 
- 笔记
- 科研
- 图上曲率
mathjax: true
---

Large scale Ricci curvature on graphs - Mark Kempton · Gabor Lippner ·
Florentin Münch

图上许多曲率仅局限在点与其邻居附近, 局部范围过小,
可能导致无法导出有意思的结果. 本文引入邻域半径$R,$
定义尺度为$R$的各类概念, 导出曲率.

记号
----

对带权图$G(V,w,m),$

$$\Delta f(x):=\frac{1}{m(x)}\sum_yw(x,y)(f(y)-f(x)),$$

由其导出用于能量方法的Dirichlet形式:

$$Q(f,f):=\left<{}-\Delta f,f\right>,$$
 进而导出Bakry-Emery(carré du
champ)算子:

$$\Gamma(f,g):=\frac{1}{2}(\Delta(fg)-f\Delta g-g\Delta f),$$

计算得到即有:

$$\Gamma(f,g)(x)=\frac{1}{2m(x)}\sum_y w(x,y)[f(y)-f(x)][g(y)-g(x)].$$

记$\Gamma f:=\Gamma(f,f),$
那么$\Gamma f=\frac{1}{2}\parallel\nabla f\parallel^2.$

由$\Delta$生成的热半群记为$\{P_t=e^{t\Delta}\},$ 使得$P_tf$满足热方程

$$\partial_t P_tf=\Delta P_tf.$$


曲率导出
--------

对Riemannian流形$M,$ Ricci曲率以$K$为下界等价于

$$|\nabla P_tf|\le e^{-Kt}P_t|\nabla f|,\quad \,\forall\,C_c^\infty(M).$$


我们定义$R$-梯度来将这个概念大范围推广到图上.
令$B_R(x)=\{y:d(x,y)\le R\}.$ 对$f:V\rightarrow \mathbb{R},$ $x\in V,$
定义: 
$$|\nabla_R f|(x):=\max_{y\in B_R(x)}|f(y)-f(x)|.$$


接下来我们考虑令 
$$|\nabla_R P_tf|\le e^{-Kt}P_t|\nabla_R f|$$

成立的必要条件是什么.

由于$t=0$时两侧相等, $t=0$时右侧导数应比左侧导数大.
注意到对两侧求导就能将曲率条件$K$提出, 我们进行求导推导.
由于$P_tf$连续变动, $\,\exists\,y_0\in B_R(x)$使得

$$|\nabla_RP_tf|(x)=|P_tf(y_0)-P_tf(x)|,\quad \,\forall\,t\in[0,\varepsilon].$$

那么对满足$|\nabla_R f|(x)=|f(y)-f(x)|$的$y\in B_R(x),$

$$|\nabla_RP_tf|(x)=|P_tf(y_0)-P_tf(x)|\ge |P_tf(y)-P_tf(x)|,\quad \,\forall\,t\in[0,\varepsilon],$$

且$t=0$时两侧相等, 因此$t=0$时左侧导数也比右侧导数大.

计算$t=0$时右侧导数为

$$\partial_t (P_tf(y)-P_tf(x))\operatorname{sgn}(P_tf(y)-P_tf(x))=(\Delta f(y)-\Delta f(x))\operatorname{sgn}(f(y)-f(x)),$$


因此对任意满足$|\nabla_R f|(x)=|f(y)-f(x)|$的$y\in B_R(x),$

$$\begin{aligned}
            (\Delta f(y)-\Delta f(x))\operatorname{sgn}(f(y)-f(x))&\le \partial_t |\nabla_RP_tf|(x)\le \partial_t (e^{-Kt}P_t|\nabla_Rf|)\\
            &\le -K|\nabla_R f|(x)+\Delta |\nabla_R f|(x).
        \end{aligned}$$

这样我们有关于曲率的不等式:

$$K|\nabla_R f|(x)\le\Delta |\nabla_R f|(x)-(\Delta f(y)-\Delta f(x))\operatorname{sgn}(f(y)-f(x)).$$


左右关于$f$的量纲为$1,$ 不妨设$|\nabla_R f|=1,$
由此导出如下的曲率定义方法:

**定义 1.1**. *任意指定$R\in \mathbb{N},$ $x,y\in V,$ 定义**梯度-Ollivier曲率**:* 


$$K_R(x,y):=\inf_{\begin{subarray}{c}
                    f:V\rightarrow \mathbb{R}\\
                    |\nabla_Rf|(x)=1\\
                    |f(y)-f(x)|=|\nabla_R f|(x)
            \end{subarray} }\Delta|\nabla_R f|(x)-(\Delta f(y)-\Delta f(x))\operatorname{sgn}(f(y)-f(x)).$$

与Ollivier曲率联系
------------------

**定理 1.2**. *$\,\forall\,x\sim y,$ 我们有:* 


$$K_1^{Ol}(x,y)\ge K_1(x,y).$$


**证:** 由定义, 
$$K_1^{Ol}(x,y)=\min_{\begin{subarray}{c}
                    \parallel\nabla f\parallel_{\infty}=1\\
                    f(y)-f(x)=1
            \end{subarray} }\Delta f(x)-\Delta f(y).$$

令$f$为实现最小值的函数, 则$|\nabla_1 f|(x)=1,$ 且$\,\forall\,z\sim x,$
$|\nabla_1 f|(z)\le 1.$ 这说明$\Delta |\nabla_1 f|(x)\le 0.$ 因此:

$$K_1(x,y)\le \Delta |\nabla_1f|(x)+K_1^{Ol}(x,y)\le K_1^{Ol}(x,y).$$


梯度估计
--------

接下来说明这种曲率定义方式事实上也是充分的. 首先需要如下引理:

**引理 1.3**. *若$K_R(x,y)\ge K,$ $\,\forall\,d(x,y)\le R.$ 给定$t>0,$ 取函数* 


$$G_s:=e^{-Ks}P_s|\nabla_R P_{t-s}f|,\quad s\in[0,t]$$


*那么$G_s$是递增函数.*

**证:**
只需证$G_s$下导数$\underline{\partial}_sG_s:=\varliminf\limits_{h\rightarrow 0}\frac{G_{s+h}-G_s}{h}\ge0.$
计算得到:

$$\underline{\partial}_sG_s=-KG_s+e^{-Ks}(P_s(\underline\partial_s|\nabla_RP_{t-s}f|)+\Delta P_s|\nabla_R P_{t-s}f|).$$


与导出曲率时的方法相同,
$\,\forall\,y\in B_R(x)$满足$|\nabla_R P_{t-s}f|(x)=|P_{t-s}f(y)-P_{t-s}f(x)|,$
有: 
$$\begin{aligned}
                \underline\partial_s|\nabla_RP_{t-s}f|(x)&\ge \partial_s|P_{t-s}f(y)-P_{t-s}f(x)|\\
                &=(\partial_s P_{t-s}f(y)-\partial_s P_{t-s}f(x))\operatorname{sgn}(P_{t-s}f(y)-P_{t-s}f(x))\\
                &=-(\Delta P_{t-s}f(y)-\Delta P_{t-s}f(x))\operatorname{sgn}(P_{t-s}f(y)-P_{t-s}f(x))\\
                &\ge |\nabla_R P_{t-s}f|(x)K_R(x,y)-\Delta |\nabla_RP_{t-s}f|(x)\\
                &\ge K|\nabla_R P_{t-s}f|(x)-\Delta |\nabla_R P_{t-s} f|(x)
            \end{aligned}$$

由于$P_s\Delta=\Delta P_s$且对于非负函数$f\ge 0,$ $P_sf\ge 0,$ 我们有
$\underline{\partial}_s G_s\ge 0,$ 引理得证.

比较$G_0$与$G_t,$ 立即得到如下定理成立:

**定理 1.4**. *若$K_R(x,y)\ge K,$ $\,\forall\,d(x,y)\le R,$ 则* 


$$|\nabla_R P_tf|\le e^{-Kt}P_t|\nabla_R f|.$$


衰减性
------

当$K=0$时, 上述梯度估计不再能给出好的衰减性. 我们希望证明如下的估计:

**定理 1.5**. *若$\,\forall\,x,y\in V,$ $d(x,y)\le R,$ 有$K_R(x,y)\ge 0.$ 那么* 


$$|\nabla_R P_tf|^2\le \frac{C}{t}\parallel f\parallel^2_{\infty},$$


我们希望利用$\Gamma f$来估计$|\nabla_R f|^2,$ 给出其上界.
然而对$R\ge 2,$ $\Gamma$仅涉及一步邻域,
于是基本的想法是将$\Gamma f$在足够大的邻域上求和来控制$|\nabla_R f|.$
我们需要如下工具.

**定义 1.6**. *对图$G=(G,w,m),$ 记$Q(x,y):=\frac{w(x,y)}{m(x)},$ 那么 $\Delta f(x)=\sum_y Q(x,y)(f(y)-f(x)).$*  *记$\deg(x):=\sum_y Q(x,y),$ $Q_{\min} :=\inf_{x\sim y}Q(x,y).$ 定义$A:=\Delta+\deg_{\max},$ 称为**平均算子**.* 

易见它满足一些简单的性质:

1.  $f\ge 0\Rightarrow Af\ge 0;$

2.  $\parallel Af\parallel_{\infty}\le \deg_{\max}\parallel f\parallel_{\infty};$

3.  $P_t A=AP_t.$

**引理 1.7**. *$\,\forall\,f:V\rightarrow \mathbb{R},$ 我们有* 


$$|\nabla_R f|^2\le \frac{2R}{Q_{\min}^R}A^{R-1}\Gamma f.$$


**证:** 首先估计$A^{R-1}\Gamma f.$ 注意到$\,\forall\,g\ge 0,$

$$Ag(x)\ge \sum_y Q(x,y) g(y)\ge Q_{\min}\sum_{y\sim x}g(y).$$
 因此,

$$A^{R-1}\Gamma f\ge Q_{\min}^{R-1}\sum_{x\sim x_1\sim\cdots\sim x_{R-1} } \Gamma f(x_{R-1}).$$

类似地, $\Gamma f$本身满足

$$\Gamma f(x)\ge \frac{1}{2}Q_{\min}\sum_{y\sim x}(f(z)-f(x))^2.$$
 因此,

$$A^{R-1}\Gamma f(x)\ge \frac{1}{2}Q_{\min}^{R}\sum_{x\sim x_1\sim\cdots\sim x_{R} } (f(x_{R})-f(x_{R-1}))^2.$$

那么设$|\nabla_R f|(x)=|f(x)-f(y)|,$ $y\in B_R(x).$
取$x=y_0\sim \cdots\sim y_r=y,$ $r\le R.$
那么由基本不等式$\frac{a_1+\cdots+a_n}{n}\le \sqrt{\frac{a_1^2+\cdots+a_n^2}{n} },$
有: 
$$\begin{aligned}
                A^{R-1}\Gamma f(x)&\ge \frac{1}{2}Q_{\min}^{R}\sum_{k=1}^r(f(y_k)-f(y_{k-1}))^2\\
                &\ge \frac{1}{2}Q_{\min}^R\frac{1}{r}(f(y_r)-f(y_0))^2\\
                &\ge \frac{1}{2}Q_{\min}^R\frac{1}{R}|\nabla_R f|^2.
            \end{aligned}$$
 引理得证.

现在就能证明前面的定理了. 事实上我们可以证明如下更强的版本:

**定理 1.8**. *设$K_R(x,y)\ge K,$ $\,\forall\,x,y\in V,$ $d(x,y)\le R.$ 那么* 


$$\frac{e^{2Kt}-1}{2K}|\nabla_R P_tf|^2\le R\frac{\deg_{\max}^{R-1} }{Q_{\min}^{R} }\parallel f\parallel_{\infty}^2.$$


*$K=0$时, $\frac{e^{2Kt}-1}{2K}:=t,$ 即为前面的定理.*

**证:** 令$H_s:=A^{R-1}P_s[(P_{t-s}f)^2],$
$G_s:=e^{-Ks}P_s|\nabla_R P_{t-s} f|.$ 那么对$H$求导, 应用前一引理即有:

$$\begin{aligned}
                \partial_s H_s&= P_s A^{R-1}\Delta(P_{t-s}f)^2-2P_s A^{R-1}P_{t-s}f \cdot \Delta P_{t-s} f\\
                &=2P_sA^{R-1} \Gamma (P_{t-s}f)\\
                &\ge \frac{Q_{\min}^R}{R}P_s|\nabla_R P_{t-s}f|^2\\
                &\ge \frac{Q_{\min}^R}{R}(P_s|\nabla_R P_{t-s}f|)^2\\
                &=\frac{Q_{\min}^R}{R}e^{2Ks}G_s^2.
            \end{aligned}$$
 积分并利用$G_s$是单增的, 得到:

$$H_t-H_0\ge \frac{Q_{\min}^R}{R}G_0^2\int_0^te^{2Ks}ds=\frac{Q_{\min}^R}{R}G_0^2\frac{e^{2Ks}-1}{2K}.$$

那么由于$\parallel Ag\parallel_{\infty}\le \deg_{\max}\parallel g\parallel_{\infty},$
$H_0\ge 0,$ 
$$\begin{aligned}
                \deg_{\max}^{R-1}\parallel f\parallel_\infty^2&\ge A^{R-1}(P_tf)^2=H_t\\
                &\ge \frac{Q_{\min}^R}{R}G_0^2\frac{e^{2Kt}-1}{2K}\\
                &=\frac{Q_{\min}^R}{R}|\nabla_R P_tf|^2\frac{e^{2Kt}-1}{2K}.
            \end{aligned}$$
 整理即有定理成立.

需要注意的是, 该定理只在$\deg_{\max}<\infty,$ $Q_{\min}>0,$
即图$G$度数有一致上界, $Q$有非零一致下界时有意义.

指数曲率
--------

Ollivier曲率以$K$为下界由下面的梯度估计刻画:

$$\parallel\nabla_R P_tf\parallel_{\infty}\le e^{-Kt}\parallel\nabla_R f\parallel_{\infty}.$$


指数Ollivier曲率的想法是对$f>0,$ 加强梯度估计为如下形式:
$$\parallel\nabla_R \log P_tf\parallel_{\infty}\le e^{-Kt}\parallel\nabla_R 
        \log f\parallel_{\infty}.$$

这的确是更强的形式,
因为$\frac{1}{\varepsilon}\log(1+\varepsilon f)\rightarrow f,$
$\varepsilon\rightarrow 0.$
因此下面的不等式成立可以通过取极限推出上面的梯度估计.

那么$\,\forall\,x,y\in V$满足$d(x,y)\le R,$
且$\log f(y)-\log f(x)=\parallel\nabla_R \log f\parallel_{\infty},$
类似先前的导出方法, 我们对两侧求导, 在$t=0$时, 有

$$\partial_t (\log P_t f(y)-\log P_t f(x))=\frac{\Delta f(y)}{f(y)}-\frac{\Delta f(x)}{f(x)}\le -K\parallel\nabla_R \log f\parallel_{\infty}.$$

令$f=\exp(g),$ 即有如下定义:

**定义 1.9**. *任意指定$R\in \mathbb{N},$ $x,y\in V,$ 定义**指数梯度-Ollivier曲率**:* 


$$K_R^e(x,y)=\inf_{\begin{subarray}{c}
                r>0\\
                \parallel\nabla_R g\parallel_{\infty}=r\\
                g(y)-g(x)=r \end{subarray} }\frac{1}{r} \left(\frac{\Delta \exp(g)}{\exp(g)}(x)-\frac{\Delta \exp(g)}{\exp(g)}(y)\right)$$

类似地, 它的定义方式也是充分的.

**定理 1.10**. *若$K_R^e(x,y)\ge K,$ $\,\forall\,d(x,y)\le R,$ 且$G$为有限图. 那么$\,\forall\,0<f\in \ell^\infty(V),$* 


$$\parallel\nabla_R\log P_tf\parallel_{\infty}\le e^{-Kt}\parallel\nabla_R \log f\parallel_{\infty}.$$


**证:** 由于假设$G$是有限的, 最大模均能在某点取到. 记$g_0=\log P_tf,$
$r_0=\parallel\nabla_R g_0\parallel_{\infty},$ 则 
$$\begin{aligned}
                \partial_t\parallel\nabla_R\log P_t f\parallel_{\infty}
                &=\sup_{\begin{subarray}{c}
                        d(x,y)\le R\\
                        \log P_tf(y)-\log P_tf(x)=\parallel\nabla_R \log P_t f\parallel_{\infty}
                    \end{subarray} }\partial_t(\log P_tf(y)-\log P_tf(x))\\
                &=-r_0\inf_{\begin{subarray}{c}
                        d(x,y)\le R\\
                        g_0(y)-g_0(x)=\parallel\nabla_R g_0\parallel_{\infty}=r_0
                    \end{subarray} }\frac{1}{r_0}\left(\frac{\Delta \exp(g_0)}{\exp(g_0)}(x)-\frac{\Delta \exp(g_0)}{\exp(g_0)}(y)\right)\\
                &\le -r_0\inf_{\begin{subarray}{c}
                        d(x,y)\le R\\
                        g(y)-g(x)=\parallel\nabla_R g\parallel_{\infty}=r
                    \end{subarray} }\frac{1}{r}\left(\frac{\Delta    \exp(g)}{\exp(g)}(x)-\frac{\Delta \exp(g)}{\exp(g)}(y)\right)\\
                &=-r_0 \inf_{d(x,y)\le R} K_R^e(x,y)\le -r_0 K=-K\parallel\nabla_R\log P_t f\parallel_{\infty}.
            \end{aligned}$$
从而$\partial_t \log \parallel\nabla_R\log P_t f\parallel_{\infty}\le -K,$
积分得到定理成立.

文章最后更新于 2021-11-16 15:29:10 
