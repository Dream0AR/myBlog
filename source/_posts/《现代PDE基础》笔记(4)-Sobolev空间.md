---
title: 《现代PDE基础》笔记(4)-Sobolev空间
date: 2021-10-24 19:48:18
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

基本定义
--------

默认$\Omega\subset \mathbb{R}^n$为有界区域或外区域(有界区域闭包之补),
边界为$C^\infty$子流形或$C^m$子流形. 对边界的光滑性要求由隐函数定理,
等价于要求$\,\forall\,x\in \partial \Omega,$ $\,\exists\,$邻域$U\ni x,$
$U\cap \partial\Omega$可由$x_j=\varphi(\widehat{x}_j)\in C^\infty/C^m$表示,
$1\le j\le n.$

对$m\in \mathbb{N},$ $1\le p\le \infty,$
定义Sobolev空间$H^{m,p}(\Omega)$为满足条件$D^\alpha u\in L^p(\Omega),$
$\quad |\alpha|\le m$的广义函数$u$全体. 配备范数
$$\parallel u\parallel_{H^{m,p}(\Omega)}=\left(\sum_{|\alpha|\le m}\parallel D^\alpha u\parallel_{L^p(\Omega)}^p\right)^{\frac{1}{p} },\quad 1\le p<\infty,$$
$$\parallel u\parallel_{H^{m,\infty}(\Omega)}=\max_{|\alpha|\le m}\parallel D^\alpha u\parallel_{L^\infty(\Omega)}.$$

由于$L^p(\Omega)$为Banach空间, 容易证明$H^{m,p}(\Omega)$也是Banach空间.
回忆$C^\infty$在$L^p$中稠密,
通过类似的方法可证$C^\infty(\overline{\Omega})$在$H^{m,p}(\Omega)$中稠密(当然$C^m(\overline{\Omega})$在$H^{m,p}(\Omega)$中也稠密).
因此$H^{m,p}(\Omega)$可视为$C^\infty(\overline{\Omega})$在配备$\parallel\cdot\parallel_{H^{m,p}(\Omega)}$模下的完备化空间.

等价模定理
----------

对$f\in H^{m,p}(\Omega),$ 定义基于$H^{m,p}(\mathbb{R}^n)$的模
$$\parallel f\parallel_{\widetilde{H}^{m,p}(\Omega)}=\inf_{\widetilde{f}|_{\Omega}=f}\parallel\widetilde{f}\parallel_{H^{m,p}(\mathbb{R}^n)},$$
$\widetilde{f}$即为$f$在$\mathbb{R}^n$上的延拓.
显然对任意延拓$\widetilde{f},$
$\parallel f\parallel_{H^{m,p}(\Omega)}\le \parallel\widetilde{f}\parallel_{H^{m,p}(\mathbb{R}^n)},$
因此$\parallel f\parallel_{H^{m,p}(\Omega)}\le \parallel f\parallel_{\widetilde{H}^{m,p}(\mathbb{R}^n)}.$
而接下来我们证明能够找到常数使反过来的不等式也成立, 因此有如下定理:

**定理 1.1**. *$H^{m,p},\widetilde{H}^{m,p}$为等价模.* 

**证:** 只需构造一个延拓$\widetilde{f},$
使得$\parallel\widetilde{f}\parallel_{H^{m,p}(\mathbb{R}^n)}\le C\parallel f\parallel_{H^{m,p}(\Omega)},$
$C=C(m,p,\Omega)$与$f$无关即可. 这样有
$$\parallel f\parallel_{H^{m,p}(\Omega)}\le\parallel f\parallel_{\widetilde{H}^{m,p}(\Omega)}\le \parallel\widetilde{f}\parallel_{H^{m,p}(\mathbb{R}^n)}\le C\parallel f\parallel_{H^{m,p}(\Omega)},$$
定理即证. 由于$C^m(\overline\Omega)$在$H^{m,p}(\Omega)$中稠密,
不妨先对$f\in C^m(\overline{\Omega})$的情况进行讨论.

我们采用Lions延拓的方法. $\,\forall\,x\in \overline{\Omega},$
若$x\in \Omega,$ 取$O_\delta(x)\subset \Omega;$ 若$x\in \partial\Omega,$
取$O_\delta(x)$使得$O_\delta(x)\cap \partial\Omega$可由$C^m$函数表示.
那么$\{O_\delta(x)\}$构成$\overline{\Omega}$的开覆盖,
有有限子覆盖$\{O_{\delta_i}(x_i)\}.$
取从属于之的单位分解$\{\varphi_i\}.$ 那么由于$f=\sum_i \varphi_if,$
只需对每个$\varphi_i f$做延拓$F_i.$ 由于$\varphi_i$仅与$\Omega$有关,
$\,\exists\,C>0$使得
$$\parallel\varphi_i f\parallel_{H^{m,p}(\Omega)}\le C\parallel f\parallel_{H^{m,p}(\Omega)}.$$
只需令延拓$F_i$满足
$$\parallel F_i\parallel_{H^{m,p}(\mathbb{R}^n)}\le C_i\parallel\varphi_i f\parallel_{H^{m,p}(\Omega)},$$
这样取$\widetilde{f}=\sum_i F_i$即可.

若$x_i\in \Omega,$ 则取$F_i$为$\varphi_i f$的零延拓即可;
若$x_i\in \partial \Omega,$
将$\partial \Omega\cap O_{\delta_i}(x_i)$展平,
使$\Omega\cap O_{\delta_i}(x_i)$含于上半平面$\mathbb{H}$中,
过程中$H^{m,p}$模不变. 取定$O_{\delta}(x)$时可要求附加条件:
$\Omega^c\cap O_{\delta}(x)$展平后在下半平面的部分包含$\Omega\cap O_{\delta}(x)$的镜像对称.
不然可以缩小$O_{\delta}(x)$在$\Omega$中的部分,
尽管$O_{\delta}(x)$不再是球形邻域.

依然用同样的符号来记展平后的各项元素. 不妨设展平是关于$x_1$的,
记$y=(x_2,\cdots,x_n),$
那么定义支撑在$O_{\delta_i}(x_i)$上(可做零延拓)的延拓

$$F_i(x_1,y)=\begin{cases}
                \varphi_i f(x_1,y)&x_1\ge 0\\
                 \sum_{j=0}^m C_j\varphi_if(-\lambda_j x_1,y)&x_1<0
            \end{cases}.$$

它在上下半平面分别都是$C^m$的, 只需验证在$x_1=0$时在$x_1$方向上的正则性.
注意到 只需要保证$\sum_{j=0}^m (-\lambda_j)^kC_j=1,$
$\,\forall\,0\le k\le m,$
即有$F_i\in C^m(\mathbb{R}^n)\subset H^{m,p}(\mathbb{R}^n).$
而由于$\det(-\lambda_j)^k$为范德蒙行列式,
只要$\lambda_j>0$互异即有解$\{C_j\}.$
因此延拓$F_i\in C^m(\mathbb{R}^n)$是可实现的.
将其拉回到初始的$O_{\delta_i}(x_i),$ 做零延拓即可.

这样对$f\in C^m(\Omega),$
我们找到了合适的延拓$\widetilde{f}\in C^m(\mathbb{R}^n),$
满足$\parallel\widetilde{f}\parallel_{H^{m,p}(\mathbb{R}^n)}\le C\parallel f\parallel_{H^{m,p}(\Omega)}.$
一般地, 对$f\in H^{m,p}(\Omega),$ 有$f_i\xrightarrow{H^{m,p} } f.$
此时依照同样的方法构造延拓,
不难证明$\widetilde{f_i}\xrightarrow{H^{m,p} } \widetilde{f}.$
因此依旧有$\parallel\widetilde{f}\parallel_{H^{m,p}(\mathbb{R}^n)}\le C\parallel f\parallel_{H^{m,p}(\mathbb{R}^n)}.$
命题得证.

事实上证明中令$j$从$1$开始计数即可. 这样虽然延拓是$C^{m-1}$的,
但由于在$x_1=0$两侧是$C^m$的, 延拓$F_i$仍然是$m$阶广义可导的,
且导数落在$L^p$空间中.

Sobolev不等式
-------------

又称**嵌入定理**. 定义齐次Sobolev模
$$|f|_{\dot{H}^{m,p}(\Omega)}=\left(\sum_{|\alpha|=m}\parallel\partial^\alpha f\parallel_{L^p(\Omega)}^p\right)^{\frac{1}{p} }.$$

做关于$x$的量纲分析: 将$x$替换为$kx,$ 多出常数$k^{\frac{n}{p}-m}.$
与该式相匹配的元素关于$x$的量纲应同样为$\frac{n}{p}-m.$

**定理 1.2** (Sobolev不等式(嵌入定理)). *当$\frac{n}{p}=\frac{n}{q}-m$时, 有* 

$$\parallel f\parallel_{L^p(\Omega)}\le C|f|_{\dot{H}^{m,q}(\Omega)},\quad \,\forall\,f\in C_c^\infty(\Omega)$$

**证:** 首先先做基本的观察, 让证明的结论变得尽可能简单. 假设$m\ge 2,$
对$m-1$以下均有不等式成立, 那么
$$\parallel f\parallel_{L^{p}(\Omega)}\le C_{m-1}|f|_{\dot{H}^{m-1,q_1}(\Omega)}.$$
记$g_\alpha=\partial^\alpha f,$ 那么
$$\parallel g_\alpha\parallel_{L^{q_1}(\Omega)}\le C_1|g_\alpha|_{\dot{H}^{1,q_2}(\Omega)}.$$
从而得到
$$\parallel f\parallel_{L^p(\Omega)}\le C_1C_{m-1}\sum_{\alpha}|g_\alpha|_{\dot{H}^{1,q_2}(\Omega)}\le C_m|f|_{\dot{H}^{m,q_2}(\Omega)},$$
$C_m$可取为$nC_1 C_{m-1}.$ 由于$\begin{cases}
                \frac{n}{p}=\frac{n}{q_1}-m+1,\\
                \frac{n}{q_1}=\frac{n}{q_2}-1.
            \end{cases},$ 发现$q_2=q,$ 满足$\frac{n}{p}=\frac{n}{q}-m.$
因此只需对$m=1$的情形证明即可.

接下来假设$q=1,$ $p=\frac{n}{n-1}$的情况已证明. 那么对一般的$p,q,$
取$g=|f|^{\frac{p(n-1)}{n} },$ 我们有:
$$\parallel f\parallel_{L^p}^{\frac{p(n-1)}{n} }=\parallel g\parallel_{L^{\frac{n}{n-1} } }\le C|g|_{\dot{H}^{1,1} }=\widetilde{C}\sum_{j=1}^n\parallel|f|^{\frac{p(n-1)}{n}-1}\partial_jf\parallel_{L^1}\le \widetilde{\widetilde{C} }|f|_{\dot{H}^{1,q} }\parallel|f|^{\frac{p(n-1)}{n}-1}\parallel_{L^{q^\ast } }.$$
其中$q^\ast $满足$\frac{1}{q}+\frac{1}{q^\ast }=1.$
结合$\frac{n}{p}=\frac{n}{q}-1,$ 我们有$q^\ast [\frac{p(n-1)}{n}-1]=p.$ 因此
$$\parallel|f|^{\frac{p(n-1)}{n}-1}\parallel_{L^{q^\ast } }=\parallel f\parallel_{L^{p} }^{\frac{p(n-1)}{n}-1},$$
将该项挪到不等式左侧, 便给出了一般情况下的证明. 从而只需考虑$q=1,$
$p=\frac{n}{n-1}$的情形.

$n=1$时, $p=\infty,$
需证$\parallel f\parallel_{L^\infty}\le C|f|_{\dot{H}^{1,1} }.$
由于$\mathbb{R}^1$上的函数$f\in C_c^\infty(\Omega),$ 结论是显然的,
取$C=1$甚至$\frac{1}{2}$即可. 对一般的$n,$ 假设$n-1$正确,
记$y=(x_2,\cdots,x_n),$ 那么有:

$$\begin{aligned}
                \parallel f\parallel_{L^{\frac{n}{n-1} } }&=\left(\int_{\mathbb{R} }\int_{\mathbb{R}^{n-1} }|f(x_1,y)|^{\frac{n}{n-1} }dx_1dy\right)^{\frac{n-1}{n} }\\
                &\le\left(\int_{\mathbb{R}^{n-1} }\int_{\mathbb{R} }|f(x_1,y)|dx_1\left(\int_{\mathbb{R} }|\partial_1 f(y_1,y)|dy_1\right)^{\frac{1}{n-1} }\right)^{\frac{n-1}{n} }\\
                &\le \left|\left|\left(\int_{\mathbb{R} }|\partial_1 f(y_1,y)|dy_1\right)^{\frac{1}{n-1} }\right|\right|_{L^p(\mathbb{R}^{n-1}_y)}^{\frac{n-1}{n} }\left|\left|\int_{\mathbb{R} }|f(y_1,y)|dy_1\right|\right|_{L^q(\mathbb{R}^{n-1}_y)}^{\frac{n-1}{n} }
            \end{aligned}$$

取$q=\frac{n-1}{n-2},$ 则$p=n-1.$ 应用假设, 有:

$$\begin{aligned}
                \parallel f\parallel_{L^{\frac{n}{n-1} } }&\le C\left|\left|\int_{\mathbb{R} }|\partial_1 f(y_1,y)|dy_1\right|\right|_{L^1(\mathbb{R}^{n-1}_y)}^{\frac{1}{n} }\left(\sum_{j=2}^m\left|\left|\partial_j\int_{\mathbb{R} }|f(y_1,y)|dy_1\right|\right|_{L^1(\mathbb{R}^{n-1}_y)}\right)^{\frac{n-1}{n} }\\
                &\le C\parallel\partial_1 f\parallel_{L^1(\mathbb{R}^n)}^{\frac{1}{n} }\left(\sum_{j=2}^m\parallel\partial_j f\parallel_{L^1(\mathbb{R}^n)}\right)^\frac{n-1}{n}\\
                &\le \widetilde{C}\sum_{j=1}^m \parallel\partial_j f\parallel_{L^1(\mathbb{R}^n)}=\widetilde{C}|f|_{\dot{H}^{1,1} }
            \end{aligned}$$

最后一行不等号由Young不等式得到. 这样便给出了最终的证明.

记$C_c^\infty(\Omega)$按$H^{m,q}$范数完备化得到的空间为$H_0^{m,q}(\Omega),$
那么不等式对$H_0^{m,q}(\Omega)\cap L^p(\Omega)$中的函数也对. 特别地,
当$\Omega=\mathbb{R}^n$时,
$H_0^{m,q}(\mathbb{R}^n)$就是$H^{m,q}(\mathbb{R}^n).$

文章最后更新于 2021-10-25 18:35:52 
