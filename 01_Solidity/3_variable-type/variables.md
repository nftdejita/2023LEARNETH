Solidityには、*State変数*、*Local変数*、および*Global変数*の3種類の変数があります。

## 1.State変数
*State変数*はコントラクト*storage*に格納され、それによってブロックチェーンに格納されます。それらはコントラクト内で宣言されますが、関数外で宣言されます。
このコントラクトには、文字列 `text`（6行目）とuint` num`（7行目）の2つのState変数があります。

## 2.Local変数
*Local変数*は*メモリ*に格納され、それらの値はそれらが定義されている関数内でのみアクセス可能です。Local変数はブロックチェーンに格納されません。
このコントラクトでは、uint `i`（11行目）はLocal変数です。

## 3.Global変数
*Special変数*とも呼ばれる*Global変数*は、Global名前空間に存在します。宣言する必要はありませんが、コントラクト内からアクセスできます。
Global変数は、ブロックチェーン、特定のアドレス、コントラクト、およびトランザクションに関する情報を取得するために使用されます。

この例では、 `block.timestamp`（14行目）を使用して現在のブロックが生成されたときのUnixタイムスタンプを取得し、` msg.sender`（15行目）を使用してコントラクト関数のアドレスの呼び出し元を取得します。

すべてのGlobal変数のリストは、<a href="https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables" target="_blank">Solidityドキュメント<にあります。 </a>

### 主なグローバル変数

| オブジェクト        | メンバ                   | 内容                                  |
| ------------------- | ------------------------ | ------------------------------------- |
| msgオブジェクト     | msg.sender               | 呼び出し元のアドレス                  |
|                     | msg.value                | 送られてきたEther金額（単位はwei）    |
| blockオブジェクト   | block.number             | 現在のブロック番号                    |
|                     | block.timestamp          | ブロックのタイムスタンプ              |
| addressオブジェクト | address.balance          | アドレスのEther残高（単位はwei）      |
|                     | address.transfer(amount) | Etherの送金（エラー時は例外を投げる） |
|                     | address.send(amount)     | Etherの送金（エラー時はfalseを返す）  |




## ⭐️課題
1. `blockNumber`という新しいpublicなState変数を作成します。
2. 関数`doSomething（）`内で、現在のブロック番号の値をstate変数`blockNumber`に割り当てます。

ヒント：SolidityドキュメントのGlobal変数のセクションを調べて、現在のブロック番号を読み取る方法を確認してください。