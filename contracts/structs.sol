// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.8.17 <0.9.0;

contract MyContract {
    struct Person {
        string name;
        uint age;
        bool isRegistered;
    }

    // Declare a variable of type Person
    Person myPerson;
}

struct Person {
    string name;
    uint age;
    Address address;
}

struct Address {
    string street;
    string city;
    string state;
    string country;
}

