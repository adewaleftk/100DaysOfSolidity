// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.8.17 <0.9.0;

contract ExampleEnum {
    enum Days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
    
    Days public today;
    
    constructor() {
        today = Days.Tuesday;
    }
    
    function setToday(Days _today) public {
        today = _today;
    }
}
