// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assessment {
    address public owner;
    mapping(address => uint256) public balances;

    event Deposit(address indexed account, uint256 amount);
    event Withdrawal(address indexed account, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can mint tokens!");
        _;
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function deposit() public payable onlyOwner {
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Cannot transfer, not enough balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
    }

function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "No enough balance to withdraw");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawal(msg.sender, amount);
    }

}
