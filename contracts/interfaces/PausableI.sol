// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface PausableI {

    event LogPausedSet(address indexed sender, bool indexed newPausedState);

    function setPaused(bool newState) external returns(bool success);

    function isPaused() external view returns(bool isIndeed);

}
