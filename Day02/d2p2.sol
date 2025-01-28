// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract Userinput{
    string public  userinput = "Hi";
    uint256 public data1;

    function setinput(string memory input,uint256 d) public{
        userinput = input;
        data1 = d;
    } 

    function getinput1() public view returns(string memory){
        return  userinput;
    } 
    
    function get() public  view returns (uint256){
        return data1;
    }
}