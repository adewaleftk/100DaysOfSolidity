// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.8.17 <0.9.0;

contract ExampleModifier {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "Only owner can call this function.");
        _;  // this indicates that the rest of the function should be executed
    }
    
    function doSomething() public onlyOwner {
        // Only the owner of the contract can execute this function
    }
}
