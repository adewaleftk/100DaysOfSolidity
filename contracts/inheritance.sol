// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.8.17 <0.9.0;

contract Animal {
    string public species;
    
    constructor(string memory _species) {
        species = _species;
    }
    
    function makeSound() public virtual returns (string memory);
}

contract Dog is Animal {
    string public name;
    
    constructor(string memory _name) Animal("Canine") {
        name = _name;
    }
    
    function makeSound() public override returns (string memory) {
        return "Woof!";
    }
}
