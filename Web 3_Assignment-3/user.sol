//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
contract complaint_Form{
    mapping(string =>user) internal usermap;

    struct user {
        string User_Name;
        string Email;
        string Target_address;
        string Type_of_complaint;
    }

    user internal use;
address internal admin;
constructor(){
    admin = msg.sender;
}
modifier isadmin(){
    require(admin == msg.sender,"only admin can access it");
    _;
}

function store (string memory _User_Name,string memory _Email,string memory _Type_of_complaint,string memory _Target_address) public isadmin{
    use.Email = _Email;
    use.Type_of_complaint = _Type_of_complaint;
    use.Target_address = _Target_address;
    usermap[_User_Name] = use;
}

}