Solidityでは、Etherを受け取るためには特別な関数が必要です。これらの関数は`payable`修飾子を持つ必要があります。

- `receive() external payable`: この関数は、コントラクトがEtherを直接受け取るためのもので、関数が指定されていない（つまり、`msg.data`が空の）送金に対して呼び出されます。この関数は1つのコントラクトにつき1つだけ存在できます。

- `fallback() external payable`: この関数は、コントラクトが呼び出しを受け取るためのもので、関数が指定されていない（つまり、`msg.data`が空の）送金に対して呼び出されます。また、コントラクトが他の関数を認識しない場合にも呼び出されます。この関数は1つのコントラクトにつき1つだけ存在できます。

これらの関数は、コントラクトがEtherを受け取るための唯一の方法です。これらの関数が存在しない場合、または`payable`修飾子がない場合、コントラクトはEtherを受け取ることができません。

## ⭐️課題
1. `receive`関数と`fallback`関数を実装します。これらの関数は`payable`である必要があります。
2. `deposit`関数を実装します。この関数は`payable`であり、呼び出し元からEtherを受け取り、内部の状態を更新します。