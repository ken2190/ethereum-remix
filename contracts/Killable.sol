// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

import './Pausable.sol';

contract Killable is Pausable {

    event LogKill(address sender, address recipient, uint balance);

    constructor(bool initialPausedState) 
        Pausable(initialPausedState)
    {}

    function killContract() 
        isOwner 
        public 
    {
        emit LogKill(msg.sender, msg.sender, address(this).balance);
        address payable addr = payable(msg.sender);
        selfdestruct(addr);
    }

    function killContractAndTransfer(address recipient) 
        isOwner 
        public 
    {
        //require(recipient > 0);
        emit LogKill(msg.sender, recipient, address(this).balance);
        address payable addr = payable(recipient);
        selfdestruct(addr);
    }

}
