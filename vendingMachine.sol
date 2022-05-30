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

    // modifier for only owner;
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }



    // get balance of vending machine.
    function vendingBalance() public view returns(uint) {
        return canBalances[address(this)];
    }


    // restock the vending machine, only owner can do this. (if all cans are over then refill the vending machine with cans.);
    function reStock(uint amount) public onlyOwner {
       canBalances[address(this)] += amount;
    }


    // purchase can; 
    function purchaseCan(uint _amount) public payable {
        require(msg.value >= _amount * 2 ether, "The price of one can is 2 ether");
        require(canBalances[address(this)] >= _amount, "Sorry, Not enough cans available. Try again later or try to get less quantity..");
        canBalances[address(this)] -= _amount;
        canBalances[msg.sender] += _amount;

    }

    // getting costumer history of total cans purchased.
    function cansPurchased() public view returns (uint){
        return canBalances[msg.sender];
    }





}