// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ExampleMapping {
    mapping(uint => bool ) public myMapping;
    mapping(address => bool) public MyAddressMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAddressToTrue() public {
        MyAddressMapping[msg.sender] = true;
    }
}