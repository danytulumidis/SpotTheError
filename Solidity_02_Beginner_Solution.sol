//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract FindMyErros1 {
    event NameChanged(string newName);

    string public name = "Harry";
    int totalNames; // at this line, need to replace "int" into "uint"

    mapping(uint => string) allNamesByID;  
  
    /* 
      In constructor there should be "storage" or "memory" data location instead of "calldata".
      calldata: It's temporary data location, & acts like a memory, it dependence on the function execution & only available inside function.  
      calldata variable are not modifiable.
   */
    constructor(string calldata _initName) { 
        name = _initName;
    }

    function changeMyName(string calldata _newName) public {
        name = _newName;
        
        allNamesByID[totalNames] = _newName;  // In mapping() it is used "uint", so its not matching with "int" 
        totalNames++;

        emit NameChanged(_newName);
    }
    
}
