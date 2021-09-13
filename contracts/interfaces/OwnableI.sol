// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface OwnableI {
 
    event LogOwnerSet(address indexed previousOwner, address indexed newOwner);

    function setOwner(address newOwner) external returns(bool success);

    function getOwner() external view returns(address owner);

}
