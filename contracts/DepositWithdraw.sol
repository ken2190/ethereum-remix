// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

// import './Killable.sol';
import './Pausable.sol';

// contract DepositWithdraw is Killable {
contract DepositWithdraw is Pausable {

    function withdraw() public {
        payable(msg.sender).transfer(getBalance());
    }

    function deposit(uint256 amount) payable public {
        require(msg.value == amount);
    }
    
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

}
