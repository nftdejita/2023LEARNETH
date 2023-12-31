Solidityでは、変数の可視性を指定することができます。可視性は、変数がどのようにアクセスされるかを制御します。Solidityでは、以下の4つの可視性があります。

- `private`: 変数は、それが宣言されたコントラクト内からのみアクセスできます。
- `internal`: 変数は、それが宣言されたコントラクトおよびその派生コントラクトからアクセスできます。
- `public`: 変数は、どこからでもアクセスできます。また、public変数に対しては自動的にgetter関数が生成されます。
- `external`: 変数は、コントラクト外部からのみアクセスできます。主に関数に対して使用されます。

以下のコードは、これらの可視性を示しています。`privateVar`、`internalVar`、`publicVar`はそれぞれ、private、internal、publicで宣言されています。`externalFunction`は、externalで宣言された関数です。

## ⭐️課題
1. 変数 `privateVar`　に関するセット関数 `setPrivateVar()`、ゲット関数 `getPrivateVar()`を作成してください
2. 変数 `internalVar` に関するセット関数 `setInternalVar()`、ゲット関数 `getInternalVar()`を作成してください
3. 変数 `publicVar` に関するセット関数 `setPublicVar`を作成してください
4. 関数 `externalFunction`を呼び出す関数を`callExternalFunction`作成します。

ヒント：
* 戻り値を持つ関数は` function 関数名(引数) 可視性　View/Pure returns(戻り値の型) {}`となります。
* 戻り値を返却するには` return 戻り値;`と記述します。
  