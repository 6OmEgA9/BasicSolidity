// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

import "./Maths1.sol";

contract MyContract1{
    function maximumOFTwo(uint256 x, uint256 y) public pure returns(uint256){
        return Maths1.maximumOFTwo(x,y);
    }
    function minimumOFTwo(uint256 x, uint256 y) public pure returns(uint256){
        return Maths1.minimumOFTwo(x,y);
    }
    function factorial(uint256 n) public pure returns(uint256){
        return Maths1.factorial(n);
    }
    function fibonacci(uint256 n) public pure returns(uint256){
        return Maths1.fibonacci(n);
    }
    function checkArmstrong(uint256 n) public pure returns(bool){
        return Maths1.checkArmstrong(n);
    }
}