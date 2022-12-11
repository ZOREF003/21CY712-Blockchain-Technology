//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
contract Administrator{
    mapping(string =>complaint) internal commap;

    struct complaint{
        string complaint_1;
        string complaint_2;
        string complaint_3;
        string complaint_4;
    }

    complaint internal com;

address internal owner;
constructor(){
    owner = msg.sender;
}
function retrieve(string memory _complaint) public view returns(string memory, string memory, string memory, string memory){

    complaint memory com = commap[_complaint];
    return(com.complaint_1,com.complaint_2,com.complaint_3,com.complaint_4);
}

}