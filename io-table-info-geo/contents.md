class: center, middle

# 産業連関表の情報幾何
---
#### Preliminaries
藤原彰夫, 『情報幾何学の基礎』. 牧野書店, 2015.
---

## 産業連関表

### 産業連関表 (Input Output Table; 以下 IO table)とは
#### 概要
* 作成者：10省庁が共同で作成
* 原則5年ごとに出る
* 「産業部門」(行)から「産業部門」(列)への財・サービス投入量 をまとめたもの(金額ベース)

.right[source: [http://www.soumu.go.jp/toukei_toukatsu/data/io/c_method.htm](http://www.soumu.go.jp/toukei_toukatsu/data/io/c_method.htm)]
#### 図
次ページ
---
![:scale 90%](image/1.png)

---
### 定式化
考えうる IO table 全体の集合$\chi$
$$
\chi := \\{A \in \mathbb{R}^n | A_{ij} > 0, \forall i, j\\}
$$

---
### 情報幾何が補完に使える
* IO table は，5年に1度しか出ない
* その期間は，他の統計から周辺和だけ分かる:
$A\_{i \cdot} \quad A\_{\cdot j} \quad A\_{\cdot \cdot}$
.center[![:scale 70%](image/2.png)]
.center[![:scale 70%](image/3.png)]
---
### 情報幾何が補完に使える
#### 既存の補完方法：RAS
@todo RASの説明

問題点：産業構造を固定することで補完している．
→ 情報幾何で，これをもう少し自由にする

---
### 情報幾何の復習
* 最初にあるもの
    * $(M, g, \nabla, \nabla^\*)$ : $n$-dim. $C^\infty$- Riemann mfd.
        * $g$: Riemann計量
        * $\nabla$: ($TM$上の)接続
* 誘導されるもの
    * $\nabla^\*$: ($TM$上の)双対接続 i.e.
        * $\forall X, Y, Z \in \Gamma(TM), X g(Y, Z) = g(\nabla_X Y, Z) + g(Y, \nabla^\*_X Z)$
        * 一意
---
### 情報幾何の復習
* もし $\nabla, \nabla^\*$ の両方について $M$ が平坦 (i.e. $R = R^\* = 0, T = T^\* = 0$)ならば 誘導されるもの
    * (局所)双対アファイン座標系 $((\theta^i), (\eta_i))$ i.e.
        * $\Gamma\_{ij}^k = \Gamma\_{ij}^{\* k} = 0$ かつ $g(\frac{\partial}{\partial \theta^i}, \frac{\partial}{\partial \eta\_j}) = \delta^i\_j$
    * それらのポテンシャル関数 $\\{\psi(\theta^1, ..., \theta^n), \varphi(\eta_1, ..., \eta_n)\\}$ s.t.
        * $\eta\_i = \partial\_i \psi, \theta^i = \partial^i \varphi, \psi(\theta) + \varphi(\eta) - \theta^i \eta_i = 0$
        * 狭義凸，$C^\infty$
    * ダイバージェンス $D(p||q)$ i.e.
        * $D(p||q) := \psi(\theta(p)) + \varphi(\eta(q)) - \theta^i(p) \eta_i(q)$

---
### 情報幾何の復習
#### __Thm__ 拡張 Pythagoras の定理
$(M, g, \nabla, \nabla^\*)$ が双対平坦だとして，双対アファイン座標系が得られたとする．

これらの座標系の共通部分において，$p, q, r \in M$ をとる．
もし $\nabla$ - 測地線 $pq$ と $\nabla^\*$ - 測地線 $qr$ が($q$ において $g$ について)直交しているなら，
$$
D(p || q) + D(q || r) = D(p || r)
$$

@todo 直交の定義

注意: $\nabla$ - 測地線は $\theta$ 座標系の直線，$\nabla^\*$ - 測地線 は $\eta$ 座標系の直線．
---
### 情報幾何の復習
#### 双対葉層化
$(\theta^i), (\eta_j)$ : 双対アファイン座標系 ($\nabla \leadsto \theta, \nabla^* \leadsto \eta$)

$\leadsto$
それぞれ，最初の $k$ 座標と，残る $(n-k)$ 座標で分割し，以下のように混ぜる
$$
\xi := (\eta\_1, ..., \eta\_k, \theta^{k+1}, ..., \theta^n)
$$

$\leadsto$ 以下の方法で，双対葉層化ができる．

新しい座標系で，接空間の基底を
$$
e^i = \frac{\partial}{\partial \eta_i}, \quad i = 1,..., k \\\\
e_j = \frac{\partial}{\partial \theta^j}, \quad j = k+1,...,n
$$
でとると，$e^i$ と $e_j$ は直交する ($\because g(e^i, e_j) = 0,\ i \neq j$)．
---
### 情報幾何の復習
#### 双対葉層化
いま，$\xi$ の最初の $k$ 個の座標を $c = (c_1, ..., c_k) \in \mathbb{R}^k$ で固定して残りを自由に動かすと，$(n-k)$ 次元の部分多様体を得る：
$$
M^\*(c) := \\{p \in \chi\ |\ (\xi^1(p), ..., \xi^k(p)) = c \\}
$$

$\leadsto$ このとき，
* $M^\*(c)$ は $\nabla^\*$ - 自己平行になる
    * ($\because M^\*(c)$ の座標 $(\xi^{k+1}, ..., \xi^n)$ は $M$ の $\nabla^*$ - アファイン座標系 $\xi$)．
* $(\xi^{k+1}, ..., \xi^n)$ は $M^\*(c)$ の $\nabla^\*$ - アファイン座標系になる
* $M^\*(c) \cap M^\*(c') = \emptyset, \quad c \neq c'$ @todo why?
* $M = \bigcup_{c \in \mathbb{R}^k} M^\*(c)$ @todo why?
---
### 情報幾何の復習
#### 双対葉層化

![:scale 90%](image/4.png)
---
### 情報幾何の復習
#### 双対葉層化
同様に $\theta^{k+1}, ..., \theta^n$ を $d \in \mathbb{R}^{n-k}$ に固定して $\xi$ をいろいろ動かすと
$$
M(d) := \\{p \in \chi\ |\ (\xi^{k+1}(p), ..., \xi^n(p)) = d \\}
$$
という $k$ 次元の $\nabla$ - 自己平行な部分多様体が得られる．

#### Prop
$M(d)$ と $M^\*(c)$ は直交する ($\forall c, d$)．

_(Proof)_ @todo later

---
### 情報幾何の復習
#### 双対葉層化
#### Prop
* $p, q \in M$
* $r\_{pq}$ : $p$ の $M(\theta\_q)$ への $m$ - 射影

    (ただし $\xi$ 座標を $\xi\_p = (\eta\_p ; \theta\_p), \xi\_q = (\eta\_q ; \theta\_q)$ とする)

とすると，
<!-- (このとき $p \in M^\*(\eta\_p) \cap M(\theta\_p)$, $q \in M^\*(\eta\_q) \cap M(\theta\_q)$ である) -->
<!-- ($D$ を最小化するような$M(\theta\_q)$の点; 実は $\nabla$ 測地線を $M(\theta\_q)$に垂直に下ろした交点) -->

正準ダイバージェンス (双対平坦な多様体上で，先の方法で構成したダイバージェンス) は，
$$
D(p || q) = D(p || r\_{pq}) + D(r\_{pq} || q)
$$
と分解できる．
---
.center[![:scale 100%](image/5.png)]
---
## 双対座標の導入
#### Setting
$n \geq 2$ とする． $N := n^2$ とおく．

$\chi := \\{A \in M(n, \mathbb{R}\_+) | A_{ij} > 0, \forall i, j = 1,..., n\\}$ : IO table の全体

$A \in \chi$ に対して

* $(A\_{ij})$ : $A$座標

をとれる．しかし以下の理由から，「周辺和」と「それ以外の情報」を分けたい．

* IO table が出ない年度でも，周辺和の情報だけは分かる．
* 周辺和は，各産業の「規模」に比例して大きくなると考えられるので，意味論上は「周辺和」は「規模」を，「それ以外」は「産業間の相互作用」を表現すると期待される．
* 周辺和とそれ以外で情報を分離すれば，補間を「それ以外」の部分に限定して実行できる
---
## 双対座標の導入
#### Setting
「周辺和」と「それ以外の情報」を分けたい．

$\leadsto$
* $(\eta\_i)\_{i = 1}^N$: $\eta$ 座標 を
    * $\eta\_i = A\_{i \cdot} \ (i = 1, ..., n)$ (i.e. $\eta\_1, ..., \eta\_n$が行和)
    * $\eta\_{n + j} = A\_{\cdot j} \ (j = 1, ..., n)$ (i.e. $\eta\_{n+1}, ..., \eta\_{2n}$が列和)

をみたすようにとり，$\eta$ が $\nabla^\*$ - アファイン座標系 $\eta$ になるように $\nabla^\*$ 接続と，その双対を入れる．

##### 実際には
$$
C\_i := (\text{$i$行目は全て1,それ以外は0の$(n \times n)$ 行列}), \\\\
D\_j := (\text{$j$列目は全て1,それ以外は0の$(n \times n)$ 行列}), \\\\
$$
とし，
---
## 双対座標の導入
$$
b\_1 := \mathbb{1}, \\\\
b\_i := vec(C\_i)\quad (i = 2, ..., n), \\\\
b\_j := vec(D\_j)\quad (j = n+1, ..., 2n-1), \\\\
$$
($vec(A)$ は $(n \times n)$ 行列 $A$ の列を縦に積み上げた $N$ 次元ベクトル)

とおき，残る $b\_{2n}, ..., b\_N$ は，
$$
B := (b_1, ..., b_N)
$$
が正則となるようにとる．

すると，
$$
A\_{i \cdot} = vec(A)' b\_i \quad (i = 2, ..., n), \\
A\_{\cdot j} = vec(A)' b\_j \quad (j = n+1, ..., 2n-1), \\
$$
