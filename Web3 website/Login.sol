//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
contract Login {
    mapping(string => user) internal usermap;

    struct user{
        string Email;
        string Password;   
    }

    user internal use;

address internal admin;
constructor(){
    admin = msg.sender;
}

modifier isadmin(){
    require(admin == msg.sender,"Only admin can access it");
    _;
}

/**
*@dev store value in variable
   *@param _Email value to store
   *@param _Password value to store
*/

function submit(string memory _Email, string memory _Password) public isadmin{
    use.Password = _Password;
    usermap[_Email] = use;
}
}
