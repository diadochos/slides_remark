class: center, middle

# 産業連関表の情報幾何
# 事後補足資料 (20170401)
---
## 行和と列和の関係について
行和の和と列和の和は一致します．これは産業連関表の構造とは関係ないことで，単にどちらも成分を全て足した $A\_{\cdot \cdot }$にほかならないから一致します．

そのため，$2n$個ある行和と列和 (あわせて周辺和) は，実際は $2n-1$ 個の数を指定すれば，組として決まります．
ただし発表中では，周辺和のうち$2n-1$個を指定した座標をとる代わりに，周辺和を$2n-2$個，加えて全体和 $A\_{\cdot\cdot}$を指定する座標をとりました．

IO table の成分に制約があるわけではないので，産業連関表全体の空間は，$\mathbb{R}\_+^N$ の(真の)部分空間になっているわけではなく，$\mathbb{R}\_+^N$ の全体です．

RASの例示で収束しなかったのは，指定した行和と列和の組がありえないものだったためでした．

---
### 導入した双対構造の整理
双対構造を天下り的に与えるとすれば以下の通りです．
##### 1. 多様体
* $M = \chi = \\{A \in \mathbb{R}\_+^N | A_i > 0, i = 1, ..., N\\}$
* $(A\_i)\_{i=1}^N$ は$M$の大域的な座標．

##### 2. 計量 $g : \Gamma(TM) \times \Gamma(TM) \to C^\infty(M)$ を以下で定める．
* $i = j$ のとき$g(\frac{\partial}{\partial A_i}, \frac{\partial}{\partial A_j}) = \frac{1}{A_i}$
* $i \neq j$ のとき$g(\frac{\partial}{\partial A_i}, \frac{\partial}{\partial A_j}) = 0$
* 一般の元に対しては線型に拡張．

---
### 導入した双対構造の整理
##### 3. $TM$の接続 $\nabla^\*$を以下で定める．
* $\nabla^\*\_{\frac{\partial}{\partial A_i}}\frac{\partial}{\partial A_j} = 0$
* 一般の元 $X, Y, Z \in \Gamma(TM), f \in C^\infty(M)$に対しては，以下を満たすように拡張．
    * $\nabla^\*\_X(Y + Z) = \nabla^\*\_X Y + \nabla^\*\_X Z$
    * $\nabla^\*\_X(fY) = (Xf) Y + f \nabla^\*\_X Y$
    * $\nabla^\*\_{X + Y} Z = \nabla^\*\_X Z + \nabla^\*\_Y Z$
    * $\nabla^\*\_{fX} Y = f \nabla^\*\_X Y$
---
### 導入した双対構造の整理
##### 4. $\nabla^\*$の双対接続($TM$の接続) $\nabla$ を以下で定める．
* $\forall X, Y, Z \in \Gamma(TM), \forall f \in C^\infty(M)$
* $Xg(Y, Z) = g(\nabla\_X Y, Z) + g(Y, \nabla^\*\_X Z)$
* $A$座標での接続係数で表示すると，$\partial\_i g(\partial\_j, \partial\_l) = \Gamma^k\_{ij}g(\partial\_k, \partial\_l) + \Gamma\_{il}^{*k}g(\partial\_j, \partial\_k)$ から
    * $i = j = k$ のとき $\Gamma\_{ij}^k = - \frac{1}{A_i}$
    * それ以外のとき $\Gamma\_{ij}^k = 0$

##### 5. $L^a := \log A_a (a = 1, ..., N)$を新たに座標にとると，これは$\nabla$のアファイン座標になっている：
$\because$座標変換則 $\Gamma\_{ab}^c = \sum\_{i, j, k} \frac{\partial A\_i}{\partial L^a}\frac{\partial A\_j}{\partial L^b}\frac{\partial L^c}{\partial A\_k} \Gamma\_{ij}^k + \sum\_k \frac{\partial^2 A\_k}{\partial L^a \partial L^b}\frac{\partial L^c}{\partial A\_k}$ から

$\Gamma\_{ab}^c = A\_a A\_b \frac{1}{A\_c} 1\\{a = b = c\\} (- \frac{1}{A\_a}) + 1\\{a = b\\} A\_a 1\\{a = c\\}\frac{1}{A\_a}$

$= - 1\\{a = b = c\\} A\_a^2 \frac{1}{A\_a^2} + 1\\{a = b = c\\} A\_a \frac{1}{A\_a}$

$= 0$
---
### 導入した双対構造の整理
##### 6. $(L^a)$と$(A_i)$は実は双対性も満たす：
$\because g(\frac{\partial}{\partial L^a}, \frac{\partial}{\partial A\_i})$

$= \frac{\partial A\_j}{\partial L^a} g(\frac{\partial}{\partial A\_j}, \frac{\partial}{\partial A\_i})$

$ = A\_a g(\frac{\partial}{\partial A\_a}, \frac{\partial}{\partial A\_i})$

$ = \delta^a\_i$

以上の順に双対構造を導入することで，$(M, g, \nabla, \nabla^\*)$ と，対応する双対アファイン座標系一組 $((L^a), (A\_i))$ がとれた．

ここから自動的に，双対な凸関数の組とダイバージェンスが得られる．

(先に入れた接続を$\nabla$ではなく$\nabla^\*$だと思って入れたのは，最終的に得られるダイバージェンスのうち $\nabla$-ダイバージェンスが，KLダイバージェンスと一致することを見越して．)

---
## 相互作用行列の定義
相互作用行列を，混合座標が以下の $\xi$ であるようなIO table $X$：
$\xi := (\eta^A; \theta^B) = (\eta\_1, ..., \eta\_{2n-1}, \theta^{2n}, ..., \theta^N)$
に対して定義したい．

まず($A$座標で)全ての要素が1であるような $\chi$ の元(架空のIO table) $\mathbb{1}$を考える．意味論から，これは産業構造が最も等質なIO tableであると思われる．

そこで，IO table $X_0 = R(\mathbb{1}, \eta^A)$ を考える．これは周辺和が$X$と同じで，かつ産業構造が$\mathbb{1}$と同じIO tableである．$X_0$ は $\mathbb{1}$を$M^\*(\eta^A)$にe-射影($\nabla^\*$の測地線に沿った射影)した点なので，$R(\mathbb{1}, \eta^A)$ によって求められる．

$X$と$X_0$では，周辺和は等しい(双対葉層構造のうちの同じ一枚である$M^*(\eta^A)$に乗っている)ので，$X$が$X_0$に対してどの程度異なる$\theta^B$を持っているかが，$X$の産業構造の指標となる．


---
## 数値実験と，手法の評価
実データでの利用
@todo

---
## RASの収束性について
