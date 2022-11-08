// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/**
 * @title student
 * @dev Store & retrieve value in a variable
 */
contract mappingexample {
    mapping(uint128=>student) studentmap;
    address owner;
    constructor(address){
        owner = msg.sender;
    }
    struct student {
        string name;
        string dept;
        string bloodgroup;
        uint8 m1;
        uint8 m2;
        uint8 m3;
        uint128 total;
    }
    student s;
    modifier isOwner() {
        require(owner == msg.sender, "Only owner can access it");
        _;
    }
    function store(uint128 roll, string memory _name, string memory _dept, string memory _bg, uint8 _m1, uint8 _m2, uint8 _m3) public isOwner {
     
        s.name = _name;
        s.dept = _dept;
        s.bloodgroup = _bg;
        s.m1 = _m1;
        s.m2 = _m2;
        s.m3 = _m3;
        s.total = s.m1 + s.m2 + s.m3;
        studentmap[roll] = s;
       
    }
    function retrieve(uint128 _roll) public view returns(string memory, string memory, uint128) {
        student memory s1 = studentmap[_roll];
        return (s1.name, s1.bloodgroup, s1.total);
    }
}











contract deployed from(owner): 0xC75e09E807ad4623366Da82D11536AF2B58d347C

contract deployed using account 2:0xb92dF55B99f8F43742d6121E8ebfEEb31B4ba4d0 (failed to store)
--------------------------------------------------------------------------------------------------
contract interaction:(Transaction failed)

From:0xb92df55b99f8f43742d6121e8ebfeeb31b4ba4d0

To  :0x3de1210bb42d5410efe15532e10521ab228062a9

