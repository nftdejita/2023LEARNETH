Solidityには、エラーチェックとエラーハンドリングのためのいくつかの組み込み関数があります。その中でも特に重要なものはrequireとrevertです。

## require
　require関数は、関数が期待通りに動作するための前提条件をチェックするために使用されます。require関数の引数として与えられた条件がfalseである場合、関数はすぐに終了し、すべての状態の変更は元に戻されます。また、任意のエラーメッセージを引数として与えることができます。これは、何が問題であったかを呼び出し元に伝えるために使用されます。

function buy(uint amount) public {
    require(amount <= availableStock, "Not enough stock available.");
    // 購入処理
}


## revert
　revert関数は、エラーが発生したときに呼び出されます。revert関数は、すべての状態の変更を元に戻し、エラーメッセージを呼び出し元に返します。revert関数は、require関数と同様に、任意のエラーメッセージを引数として与えることができます。

function sell(uint amount) public {
    if (amount > availableStock) {
        revert("Not enough stock to sell.");
    }
    // 販売処理
}

さらに、Solidity 0.8.4以降では、カスタムエラーを定義して使用することが可能になりました。これにより、エラーコードとエラーメッセージを一緒に使用することができます。


// カスタムエラーの定義
error InsufficientBalance(uint256 available, uint256 required);

// カスタムエラーの使用
if (amount > availableBalance) {
    revert InsufficientBalance(availableBalance, amount);
}

この例では、InsufficientBalanceエラーは2つのパラメータ（利用可能な残高と必要な残高）を持ち、これらの値はエラーが発生したときに提供されます。


## ⭐️課題
setValue()関数について
1. valueは0から100までの値しか設定できないようにしてください。それ以上の値を設定しようとした場合はエラーを返すようにしてください。
1. valueが50以上の場合は、設定を許可せずにエラーを返すようにしてください。
2. buy,sell関数は削除してください。
