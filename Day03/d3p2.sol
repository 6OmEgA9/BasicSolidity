// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract MaximumOFThree{
    function MaximumOFAll(int a, int b,int c)public pure returns(int){
        int max = a;

        if(b>max){
            max = b;
        }
        if(c>max){
            max = c;
        }
        return max;
    }
}