　変数の宣言は下記のフォーマットとなります。

```solidity
	uint public count = 1;
	型　　可視性　変数名　初期値
```

　ここで`visibility`指定子は、関数とstate変数にアクセスできるユーザーを制御するために使用されます。

可視性には、 `external`、` public`、 `internal`、および`private`の4つのタイプがあります。

これらは、関数とstate変数をコントラクト内から、コントラクトから派生したコントラクト（子コントラクト）から、または他のコントラクトとトランザクションから呼び出すことができるかどうかを規制します。

| 宣言     | コントラクト内      | 子コントラクト      | 他のコントラクト |
| -------- | ------------------- | ------------------- | ---------------- |
| private  | 呼び出し可能        |                     |                  |
| internal | 呼び出し可能        | 呼び出し可能        |                  |
| public   | 呼び出し可能        | 呼び出し可能        | 呼び出し可能     |
| extenal  | this.を付ければ可能 | this.を付ければ可能 | 呼び出し可能     |

> なお、publicは引数の値をメモリに保存し、externalはメモリ保存しないため、externalの方がgasの消費が低く済みます。

この例では、 `Base`コントラクト（4行目）と` Base`コントラクトから関数とstate変数を継承する`Child`コントラクト（行55）の2つのコントラクトがあります。

`testPrivateFunc`のコメントを外すと（58〜60行目）、子コントラクトが`Base`コントラクトのprivate関数`privateFunc`にアクセスできないため、エラーが発生します。

2つのコントラクトをコンパイルしてデプロイすると、関数`privateFunc`と`internalFunc`を直接呼び出すことができなくなります。 `testPrivateFunc`と`testInternalFunc`を介してのみそれらを呼び出すことができます。

<a href="https://www.youtube.com/watch?v=NBzQVJ6OrrQ" target="_blank">可視性に関するビデオチュートリアルを見る。</a>

## ⭐️課題
`testInternalVar`と呼ばれる`Child`コントラクトに、返すことができる`Base`コントラクトからのすべてのstate変数の値を返す新しい関数を作成します。