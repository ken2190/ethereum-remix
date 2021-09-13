pragma solidity >=0.7.0 <0.9.0;

interface PausableI {

    event LogPausedSet(address indexed sender, bool indexed newPausedState);

    function setPaused(bool newState) external returns(bool success);

    function isPaused() external view returns(bool isIndeed);

}
