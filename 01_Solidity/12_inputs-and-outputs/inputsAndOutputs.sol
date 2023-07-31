// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract TestContract {
    uint public value;
    uint public availableStock;

    uint public availableBalance;
    // カスタムエラーの定義
    error InsufficientBalance(uint256 available, uint256 required);

    function buy(uint _amount) public {
        require(_amount <= availableStock, "Not enough stock available.");
        // 購入処理
    }

    function sell(uint _amount) public {
        if (_amount > availableStock) {
            revert("Not enough stock to sell.");
        }
        // 販売処理
        // カスタムエラーの使用
        if (_amount > availableBalance) {
            revert InsufficientBalance(availableBalance, _amount);
        }
    }

    function setValue(uint _value) public {
        value = _value;
    }
}