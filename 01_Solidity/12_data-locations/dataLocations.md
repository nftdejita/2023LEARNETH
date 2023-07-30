Solidity の変数の値は、異なるデータロケーションに保存することができます。*Memory*、*Storage*、*Calldata*です。

前に説明したように、値型の変数は値の独立したコピーを格納し、参照型（配列、構造体、マッピング）の変数は値の場所（参照）を格納するだけです。

関数内で参照型を使用する場合、その値がどのデータ位置に格納されるかを指定する必要があります。関数の実行価格はデータの場所に影響され、参照型からコピーを作成するとガス代がかかります。

### Storage
*storage*に格納された値はブロックチェーン上に恒久的に保存されるため、使用するためにはコストがかかる。

このコントラクトでは、ステート変数 `arr`, `map`, `myStructs` (5、6、10行目) はストレージに格納されます。ステート変数は常にストレージに格納されます。

### Memory
Memoryに保存された値は、一時的に保存されるだけで、ブロックチェーン上には存在しません。外部関数の実行中にのみ存在し、実行後は破棄されます。それらは*storage*に格納された値よりも使用料が安い。

このコントラクトでは、ローカル変数 `myMemstruct` (19行目) とパラメータ `_arr` (31行目) がMemoryに格納されます。関数のパラメータは、*memory* または *calldata* というデータロケーションを持つ必要があります。

### Calldata
*Calldata* は関数の引数を格納します。*calldata*は、*memory*と同様に、外部関数の実行時にのみ一時的に格納される。Memoryに格納される値とは異なり、calldataに格納された値を変更することはできない。Calldataは最も安価に利用できるデータロケーションである。

このコントラクトでは、パラメータ `_arr` (行 35) はデータロケーション *calldata* を持っています。もし、配列 `_arr` の最初の要素に新しい値を代入したい場合、 `function g` (line 31) では可能ですが、 `function h` (line 35) では行えません。これは、 `function g` の `_arr` がデータの場所 *memory* を持ち、 *function h* がデータの場所 `calldata` を持つためです。

## アサインメント

### MemoryからMemoryへ
*Memory*から*Memory*への代入はコピーではなく、参照を作成します。ある変数の値を変更すると、同じデータを参照している他のすべての変数の値も変更されます。

例えば、`function f` (12行目)の中で、データの場所 *memory* を持つ新しい構造体 `myMemStruct2` を作成し、それに `myMemStruct` の値を代入すると (19行目)、 `myMemStruct2` に対する変更は `myMemStruct` に対する値も変更することになります。

### Storageからlocal storageへ
*storage* から *local storage* へのアサインメントも、コピーではなく参照を作成します。

ローカル変数 `myStruct` (17行目) の値を変更すると、ステート変数 `myStructs` (10行目) の値も同様に変更されます。

## StorageとMemory / Calldata
*storage* と *memory* (または *calldata*) の間の代入は、参照ではなく、独立したコピーを作成します。

もし、 `function f` (12行目) の中で、データ位置 *memory* を持つ新しい構造体 `myMemStruct3` を作成し、それに `myStruct` の値を割り当てると、 `myMemStruct3` が変化してもマッピング `myStructs` (10行目) に格納されている値には影響しません。

冒頭で述べたように、コントラクトを作成する際には、ガス代に注意する必要があります。そのため、できるだけガス代がかからないデータロケーションを使用する必要があります。

## ⭐️ 課題
1. 関数 f` 内の `myStruct` メンバ `foo` の値を 4 に変更する。
2. 関数 f` の内部で、データの場所 *memory* を指定して新しい構造体 `myMemStruct2` を作成し、それに `myMemStruct` の値を代入します。myMemStruct2` のメンバー `foo` の値を 1 に変更します。
3. `function f` の内部で、データの場所 *memory* を指定して新しい構造体 `myMemStruct3` を作成し、その値を `myStruct` に代入します。myMemStruct3` のメンバー `foo` の値を 3 に変更します。
4. 関数 f が `myStruct`、`myMemStruct2`、`myMemStruct3` を返すようにします。

ヒント：関数 `f` の戻り値の型が正しいことを確認してください。