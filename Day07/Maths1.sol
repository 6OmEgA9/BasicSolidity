// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

library Maths1{
    function maximumOFTwo(uint256 x, uint256 y) public pure returns(uint256){
        return x > y ? x : y;
    }
    function minimumOFTwo(uint256 x, uint256 y) public pure returns(uint256){
        return x < y ? x : y;
    }
    function factorial(uint256 x) public pure returns(uint256){
        if (x == 0 || x == 1){
            return 1;
        }else{
            return x * factorial(x - 1);
        }
    }
    function fibonacci(uint n) public pure returns(uint b) { 
        if (n == 0) {
            return 0;   
        }
        uint a = 1;
        b = 1;
        for (uint i = 2; i < n; i++) {
            uint c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
    function checkArmstrong(uint256 num) public pure returns (bool) {
        uint256 originalNum = num;
        uint256 sum = 0;
        uint256 digits = 0;
        while (num != 0) {
            digits++;
            num /= 10;
        }
        
        num = originalNum;
        while (num != 0) {
            uint256 digit = num % 10;
            sum += digit ** digits;
            num /= 10;
        }
        
        return sum == originalNum;
    }
}