// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract Temperature{
    int256 public scale = 1e18;

    function convert(int256 celsius)public view returns(int256){
        int256 fahrenheit=((9*celsius*scale)/5)+32*scale;
        return fahrenheit;
    }
}