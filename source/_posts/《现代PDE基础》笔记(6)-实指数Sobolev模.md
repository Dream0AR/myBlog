---
title: 《现代PDE基础》笔记(6)-实指数Sobolev模
date: 2021-11-13 17:29:37
categories: 
- 笔记
- PDE
- 现代PDE基础
mathjax: true
---

实指数Sobolev空间
-----------------

下面希望对$H^{m,p}(\mathbb{R}^n)$将$m$为实数的情形给出定义.
考虑$p=2$的情形, 记$H^{m,2}$为$H^m.$
由于$H^m(\mathbb{R}^n)\subset L^2(\mathbb{R}^n)\subset \mathscr{S}'(\mathbb{R}^n),$
可以对其做Fourier变换. 由变换性质, 我们有:

$$\begin{aligned}
            \parallel f\parallel_{H^m}&=(2\pi)^{-n}\left(\sum_{|\alpha|\le m}\parallel\xi^\alpha \widehat{f}(\xi)\parallel_{L^2}^2\right)^\frac{1}{2}\\
            &\sim \parallel(1+|\xi|^2)^{\frac{m}{2} }\widehat{f}(\xi)\parallel_{L^2}.
        \end{aligned}$$

于是对$s\in \mathbb{R}^n,$
可以定义实指数Sobolev空间$H^s(\mathbb{R}^n)\subset \mathscr{S}'(\mathbb{R}^n),$
配备模
$$\parallel f\parallel_{H^s}=\parallel(1+|\xi|^2)^{\frac{s}{2} }\widehat{f}(\xi)\parallel_{L^2}.$$
在$s$为非负整数时由上述推导过程, 与原始定义的$H^{s,2}$相容.
可以证明它也是$C_c^\infty(\mathbb{R}^n)$的完备化空间,
配备与范数相容的内积. 类似地, 可以定义齐次模
$$|f|_{\dot{H}^s}=||\xi|^s\widehat{f}(\xi)|_{L^2}.$$

对实指数Sobolev空间, 我们有如下Sobolev不等式:

**定理 1.1**. *$\,\forall\,s>\frac{n}{2},$ 我们有如下不等式:* 

$$\parallel f\parallel_{L^\infty}\le C\parallel f\parallel_{H^s}, \quad\,\forall\,f\in C_c^\infty(\mathbb{R}^n).$$

**证:** 由Fourier逆变换,
$f(x)=(2\pi)^{-n}\int_{\mathbb{R}^n} e^{ix\cdot \xi}\widehat{f}(\xi)d\xi,$
于是
$$\parallel f\parallel_{L^\infty}\le (2\pi)^{-n}\parallel\widehat{f}\parallel_{L^1}\le \parallel(1+|\xi|^2)^{\frac{s}{2} }\widehat{f}(\xi)\parallel_{L^2}\parallel(1+|\xi|^2)^{-\frac{s}{2} }\parallel_{L^2}=C\parallel f\parallel_{H^s}.$$

容易看出我们也有如下的事实:

**定理 1.2**. *$(H^s(\mathbb{R}^n))^\ast =H^{-s}(\mathbb{R}^n).$* 

**证:** $\,\forall\,f\in H^s(\mathbb{R}^n),$
$g\in H^{-s}(\mathbb{R}^n),$ 我们有
$$\int_{\mathbb{R}^n} f\overline{g}dx=(2\pi)^{-n}\int_{\mathbb{R}^n} (1+|\xi|^2)^s\widehat{f}(\xi)(1+|\xi|^2)^{-s}\overline{\widehat{g} }(\xi)dx\le (2\pi)^{-n}\parallel f\parallel_{H^s}\parallel g\parallel_{H^{-s} }.$$
于是$H^{-s}(\mathbb{R}^n)\subset (H^s(\mathbb{R}^n))^\ast .$
反过来若$g\in (H^s)^\ast ,$ $g\in \mathscr{S}'(\mathbb{R}^n).$ 由同样的式子,
$$\left<{}f,g\right>=(2\pi)^{-n}\left<{}(1+|\xi|^2)^s \widehat{f},(1+|\xi|^2)^{-s}\widehat{g}\right>\le C\parallel f\parallel_{H^s}=C\parallel(1+|\xi|^2)^s\widehat{f}(\xi)\parallel_{L^2}.$$

由于$(1+|\xi|^2)^s \widehat{f}(\xi)$在$L^2$中稠密(包含$C_c^\infty$),
$(1+|\xi|^2)^{-s}\widehat{g}\in (L^2)^\ast =L^2,$
从而$\parallel g\parallel_{H^{-s} }=\parallel(1+|\xi|^2)^{-s}\widehat{g}\parallel_{L^2}<\infty,$
$g\in H^{-s}(\mathbb{R}^n).$
从而$(H^s(\mathbb{R}^n))^\ast =H^{-s}(\mathbb{R}^n).$

负整指数Sobolev空间
-------------------

对一般的$H^{m,p},$ 定义$H^{-m,p'}:=(H_0^{m,p})^\ast \subset \mathscr{D}',$
$\frac{1}{p}+\frac{1}{p'}=1,$ 配备算子范数.
此时$C_c^\infty$也在其中稠密. 由前面的定理,
可以知道$H^s$与$H^{s,2}$的相容性在$s$为负整指数时也对.

迹定理
------

**定理 1.3** (迹定理). *$\,\forall\,f\in C_c^\infty(\mathbb{R}^n),$ 记$x'=(x_2,\cdots,x_n),$ $\pi f(x')=f(0,x').$ 我们有如下不等式:* 

$$\parallel\pi f\parallel_{H^{s-\frac{1}{2} }(\mathbb{R}^{n-1})}\le C\parallel f\parallel_{H^s(\mathbb{R}^n)},\quad \,\forall\,s>\frac{1}{2}.$$

**证:** 记$F_{n-1}f(x_1,\xi')=g(x_1,\xi')$为$f$做$n-1$次Fourier变换.
那么
$$\widehat{f}(\xi)=\int_{\mathbb{R} }e^{-ix_1\xi_1}g(x_1,\xi')dx_1,\quad g(x_1,\xi')=\frac{1}{2\pi}\int_{\mathbb{R} }e^{ix_1\xi_1}\widehat{f}(\xi)d\xi_1.$$

注意到$\widehat{\pi f}(\xi')=g(0,\xi')=\frac{1}{2\pi}\int_{\mathbb{R} }\widehat{f}(\xi)d\xi_1,$
而

$$\begin{aligned}
                \int_{\mathbb{R}^n}|\widehat{f}|d\xi_1&\le \left(\int_{\mathbb{R} }\left|\left(1+|\xi|^2\right)^{\frac{s}{2} }\widehat{f}\right|^2d\xi_1\right)^{\frac{1}{2} }\left(\int_{\mathbb{R} }\left|\left(1+|\xi|^2\right)^{-\frac{s}{2} }\right|^2d\xi_1\right)^\frac{1}{2}\\
                &\le C\left(\int_{\mathbb{R} }\left|\left(1+|\xi|^2\right)^{\frac{s}{2} }\widehat{f}\right|^2d\xi_1\right)^{\frac{1}{2} }\left(\int_{\mathbb{R} }\left(1+|\xi_1|+|\xi'|\right)^{-2s}d\xi_1\right)^\frac{1}{2}\\
                &\le C\left(1+|\xi'|^2\right)^{\frac{-s+\frac{1}{2} }{2} }\left(\int_{\mathbb{R} }\left|\left(1+|\xi|^2\right)^{\frac{s}{2} }\widehat{f}\right|^2d\xi_1\right)^{\frac{1}{2} }
            \end{aligned}$$

于是,

$$\begin{aligned}
                \parallel\pi f\parallel_{H^{s-\frac{1}{2} }(\mathbb{R}^{n-1})}&\le\frac{1}{2\pi} \parallel(1+|\xi'|^2)^{\frac{s-\frac{1}{2} }{2} }\int_{\mathbb{R} }|\widehat{f}(\xi)|d\xi_1\parallel_{L^2(\mathbb{R}^{n-1})}\\
                &\le C\parallel\left(\int_{\mathbb{R} }\left|\left(1+|\xi|^2\right)^{\frac{s}{2} }\widehat{f}\right|^2d\xi_1\right)^{\frac{1}{2} }\parallel_{L^2(\mathbb{R}^{n-1})}=C\parallel f\parallel_{H^s(\mathbb{R}^n)}
            \end{aligned}$$

命题得证.

$\,\forall\,f\in H^s(\mathbb{R}^n),$ 改变$f$在零测集上的取值并没有意义,
因此只是取$f(0,x')$并没有实际意义, 无法反映$f$的性质. 不过由迹定理,
我们知道当$\{f_\nu\}\in C_c^\infty(\mathbb{R}^n),$
$f_\nu\xrightarrow{H^s}f$时,
$\{\pi f_{\nu}\}$构成$H^{s-\frac{1}{2} }(\mathbb{R}^{n-1})$Cauchy列.
记其收敛到$\pi f,$ 称为$f$的**迹**. 迹定义了函数在边界处的取值,
反映其边界性质.

由展平技巧与单位分解, 对$f\in H^s(\Omega),$
我们也可以定义其在边界上的迹$\pi f\in H^{s-\frac{1}{2} }(\partial \Omega).$
常用$s=1$的情形,
特别地有$\parallel\pi f\parallel_{L^2(\partial\Omega)}\le C\parallel f\parallel_{H^1(\Omega)}.$
回忆空间$H_0^1(\Omega)$为$C_c^\infty(\Omega)$在$H^1$模下的完备化空间.
在给出迹的定义后, 事实上我们可以证明
$$H_0^1(\Omega)=\{f\in H^1(\Omega),\pi f=0\}.$$
这给出了$H_0^1(\Omega)$的另一种等价刻画.

Poincaré不等式
--------------

**定理 1.4** (Poincaré不等式). *对有界区域$\Omega,$ $f\in H_{0}^{1,p}(\Omega),$ $p\in[1,\infty),$ 我们有如下不等式:* 

$$\parallel f\parallel_{L^p}\le C(\Omega)\parallel\nabla f\parallel_{L^p}$$

**证:**

只需对$f\in C_c^\infty(\Omega)$给出证明.
$\,\exists\,L>0$使得$\Omega\subset [-L,L]^n.$
那么$f(x)=\int_{-L}^{x_1}\partial_1f(y_1,x')dy_1.$ 于是

$$\begin{aligned}
                |f(x)|&\le \int_{-L}^L |f_1(y_1,x')|dy_1\\
                &\le (\int_{-L}^L|f_1|^pdy_1)^{\frac{1}{p} }(2L)^{\frac{1}{q} }\\
                \parallel f\parallel_{L^p}&\le 2L\parallel f_1\parallel_{L^p}\le 2L\parallel\nabla f\parallel_{L^p}                 
            \end{aligned}$$

紧嵌入定理
----------

对有界区域$\Omega,$ 由Sobolev不等式与基本的分析,

$$\parallel f\parallel_{L^p(\Omega)}\le C\parallel f\parallel_{H^{m,q}(\Omega)},\quad \,\forall\,\frac{n}{p}\ge \frac{n}{q}-m.$$

因此有嵌入$H^{m,q}(\Omega)\hookrightarrow L^p(\Omega).$ 当不等式严格时,
即$\frac{n}{p}>\frac{n}{q}-m,$ 我们可以证明嵌入是紧的,
即将有界集映到列紧集.

取到严格不等号就可以说明嵌入是紧的, 大致是因为此时可以使用导数,
通过Ascoli-Arzela引理证明. 即设$\frac{n}{p}=\frac{n}{q}-s,$ 那么大致有
$$H^{m,q}\stackrel{c}\hookrightarrow H^{s,q}\hookrightarrow L^p$$
由于嵌入是连续的, 将收敛列映到收敛列, 只需说明第一个嵌入是紧的即可.
但是对一般的$q$尚未定义$H^{s,q},$ 因此上述说明只是形式上的.
具体证明时将不借助$H^{s,q},$ 直接给出证明.

我们可以对$p=2$时已定义的情形给出证明. 我们说明对$s>t>0,$ 有紧嵌入
$$H^s(\mathbb{R}^n)\stackrel{c}\hookrightarrow H^t_{loc}(\mathbb{R}^n).$$
这里$f\in H^t_{loc}(\mathbb{R}^n)$即为满足$\,\forall\,\varphi\in C_c^\infty(\mathbb{R}^n),$
$\varphi f\in H^t(\mathbb{R}^n)$的函数.

**引理 1.5**. *$\,\forall\,f\in C_c^\infty(\mathbb{R}^n),$ $s>t>0,$ 我们有如下不等式:* 

$$|f(x+h)-f(x)|_{\dot{H}^t(\mathbb{R}^n)}\le C|h|^{s-t}|f|_{\dot{H}^s(\mathbb{R}^n)}.$$

**证:** 不妨设$s-t\in (0,1).$ 对一般情况在$(s,t)$间加分点即可.
$F[f(x+h)-f(x)]=(e^{-ih\cdot \xi}-1)\widehat{f}(\xi).$
注意到$|e^{-ih\cdot\xi}-1|\le 2$或$C|h\cdot\xi|,$
因此$|e^{-ih\cdot \xi}-1|\le C|h|^{s-t}|\xi|^{s-t}.$ 从而
$$|f(x+h)-f(x)|_{\dot{H}^t(\mathbb{R}^n)}\le C|h|^{s-t}\parallel|\xi|^{s}\widehat{f}(\xi)\parallel_{L^2(\mathbb{R}^n)}=C|h|^{s-t}|f|_{\dot{H}^s(\mathbb{R}^n)}$$

**推论 1.6**. *$|\alpha_\varepsilon\ast f-f|_{\dot{H}^t(\mathbb{R}^n)}\le C\varepsilon^{s-t}|f|_{\dot{H}^s(\mathbb{R}^n)}$* 

因此设$\{f_{\nu}\}$为$\dot{H}^s(\mathbb{R}^n)$有界函数列,
那么$\,\forall\,\varepsilon>0,$
$\{\alpha_\varepsilon\ast f_\nu\}$为$C^m$有界函数列, $\,\forall\,m>t+1.$
从而由Arzela-Ascoli引理, 其有在任意紧集上$C^{m-1}$收敛的子列,
即$C_{loc}^{m-1}$紧. 自然地, 收敛列在$H^{m-1}$模意义下也收敛,
因此是$H^{m-1}_{loc}$紧的. 而$H^{m-1}\hookrightarrow H^t$为连续嵌入,
故$\{\alpha_\varepsilon\ast f_\nu\}$是$H^t_{loc}$紧的.

由推论,
对$\nu$一致地有$\alpha_\varepsilon\ast f_{\nu} \xrightarrow{\dot{H}^t} f_{\nu},$
由对角线法可证$\{f_{\nu}\}$有Cauchy子列, 从而是$H^t_{loc}$紧的.
因此$H^s(\mathbb{R}^n)$到$H^t_{loc}(\mathbb{R}^n)$的嵌入是紧的.

文章最后更新于 2021-11-13 18:16:30 
