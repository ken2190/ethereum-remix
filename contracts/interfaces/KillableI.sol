// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface KillableI {

    event LogKill(address sender, address recipient, uint balance);

    function killContract() external; 

    function killContractAndTransfer(address recipient) external; 

}
