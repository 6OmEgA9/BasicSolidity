// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

import "./Math.sol";

contract MyContract{
    function CalculateSquare(uint256 x) public pure returns(uint256){
        return Math.square(x);
    }
}