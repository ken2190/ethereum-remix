// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

import './Ownable.sol';

contract Pausable is Ownable {

    bool private contractPaused;

    event LogPausedSet(address indexed sender, bool indexed newPausedState);

    modifier whenNotPaused {
        require(!contractPaused);
        _;
    }

    modifier whenPaused {
        require(contractPaused);
        _;
    }

    constructor(bool _contractPaused) {
        contractPaused = _contractPaused;
    }

    function setPaused(bool newState)
	    public
        isOwner
        returns(bool success)
    {
        require(newState != contractPaused);
        contractPaused = newState;
        emit LogPausedSet(msg.sender, newState);
        return true;        
    }

    function isPaused()
        public
        view
        returns(bool isIndeed)
    {
        return contractPaused;
    }

}
