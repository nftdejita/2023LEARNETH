このセクションでは、最初の*スマートコントラクト*を作成します。このコントラクトは、値「HelloWorld！」を保持する文字列変数のみで構成されます。

最初の行で、使用するライセンスを指定する必要があります。ライセンスの包括的なリストは、<a href="https://spdx.org/licenses/" target="_blank">https://spdx.org/licenses/</a>にあります。

`pragma`キーワード（3行目）を使用して、コンパイラーが使用するSolidityバージョンを指定します。

キーワード`contract`を使用してコントラクトを定義し、名前を付けます。この場合は、` HelloWorld`です（5行目）。
コントラクト名は先頭が大文字のパスカルケースで記述します。

コントラクト内で、文字列 `" Hello World！ "`を保持する*state変数*`greet`を定義します（6行目）。

Solidityは*静的に型付けされた*言語です。つまり、変数を宣言するときに変数の型を指定する必要があります。この場合、`greet`は`string`です。

また、変数の*可視性*を定義します。これは、変数にアクセスできる場所を指定します。この場合、それはコントラクトの内外からアクセスできる`public`変数です。

*可視性*、*データ型*、*ステート変数*などの概念を理解していなくても心配しないでください。次のセクションでそれらを調べます。



## ⭐️課題

1. HelloWorldコントラクトとそのコンテンツを削除します。
2. 「MyContract」という名前の新しいコントラクトを作成します。
3. コントラクトには、文字列型の「name」と呼ばれるパブリックステート変数が必要です。
4. 新しい変数に値「Alice」を割り当てます。