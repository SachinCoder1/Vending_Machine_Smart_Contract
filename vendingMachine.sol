// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract VendingMaching {
    address public owner; // owner of this contract;
    mapping(address => uint) public canBalances; // This vending machine sells cans;

    // Constructor
    constructor(){
        owner = msg.sender;
        canBalances[address(this)] = 100;
    }


    // get balance of vending machine.
    function vendingBalance() public view returns(uint) {
        return canBalances[address(this)];
    }


    




}