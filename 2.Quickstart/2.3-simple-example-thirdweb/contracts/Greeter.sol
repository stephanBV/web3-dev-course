//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

// import "hardhat/console.sol";
contract Greeter {
    string private greeting;
    event GreetingSet(string _greeting);

    constructor(string memory _greeting) {
        // console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        // console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
        emit GreetingSet(_greeting);
    }
}