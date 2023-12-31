Solidityでは、同じ型の要素を順序付けて格納するために配列を使用できます。配列は固定長または可変長であることができます。

### 配列の宣言
固定長の配列は、宣言時にその長さを指定します。一度設定されると、その長さは変更できません。

### 配列の初期化
配列の要素は，一度に初期化することもできますし、一つずつ初期化することもできます。
配列を宣言すると、その要素は自動的にデフォルト値0に初期化されます（9行目）。
```
    uint[] public arr1 = [1, 2, 3];
    
    uint[] public arr2;
    arr2[0] = 1；

```

### 配列の操作
可変長の配列は、要素を追加または削除することでその長さを変更できます。`push`関数を使用して要素を追加し、`pop`関数を使用して最後の要素を削除します。
```
    uint[] public arr;

    arr.push(i);    // 要素の追加
    arr.pop();      // 最後の要素を削除
    delete arr[1];  // 指定した要素を削除（配列の長さは変わらない）
    n = arr.length; // 配列の長さを取得
```

配列は、要素にアクセスするためのインデックスを使用します。インデックスは0から始まります。

このコードは固定長と可変長の配列を示しています。`fixedArray`は固定長の配列で、`dynamicArray`は可変長の配列です。

## ⭐️課題
1. 変数 `fixedArray` についてセット関数 `setFixedArray(uint _index, uint _value)`とゲット関数 `getFixedArray(uint _index) ` を作成します。
2. `dynamicArray`に新しい要素を追加する関数 `pushDynamicArray(uint _value)` を作成します。
3. `dynamicArray`から最後の要素を削除する関数 `popDynamicArray() ` を作成します。
4. 変数 `dynamicArray`の要素にアクセスする関数 `getDynamicArray(uint _index)` を作成します。
5. 変数 `dynamicArray`の配列の長さを取得する関数 `getDynamicArrayLength()` を作成します。
