//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract FindMyErros1 {
    string public name = "Harry";

    function changeMyName(string memory _newName) public {  // This line data location is missing which could be "memory" 
        name = _newName;
    }
}
