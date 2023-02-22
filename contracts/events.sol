// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.8.17 <0.9.0;


contract MyContract {
    event NewUser(uint indexed userId, string name, uint age);

    function addUser(string memory _name, uint _age) public {
        // Add user to the contract
        uint userId = 123;

        // Emit a NewUser event
        emit NewUser(userId, _name, _age);
    }
}
