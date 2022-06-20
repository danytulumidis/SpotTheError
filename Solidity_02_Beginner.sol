//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract FindMyErros1 {
    event NameChanged(string newName);

    string public name = "Harry";
    int totalNames;

    mapping(uint => string) allNamesByID;

    constructor(string calldata _initName) {
        name = _initName;
    }

    function changeMyName(string calldata _newName) public {
        name = _newName;
        
        allNamesByID[totalNames] = _newName;
        totalNames++;

        emit NameChanged(_newName);
    }
    
}