//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.13;

contract Funder {

    uint public numOfFunders;

    mapping(uint => address) private funders;

    receive() external payable {}

    function transfer() external payable {
        funders[numOfFunders] = msg.sender;
    }

    function withdraw(uint withdrawAmount) external {
        require(withdrawAmount <= 2000000000000000000,"Can't withdraw more than 2 ether");
        payable(msg.sender).transfer(withdrawAmount);
    }
}


































