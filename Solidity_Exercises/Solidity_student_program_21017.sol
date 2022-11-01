// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title student
 * @dev Store & retrieve value in a variable
 */
contract student {

    uint128 rollnumber;
    string name;
    string department;
    uint8 mat;
    uint8 eng;
    uint8 sci;
    uint8 soc;
    uint8 cys;
    uint128 total;
    uint128 average;

    /**
     * @dev Store value in variable
     * @param _roll value to store students rollnumber
     * @param _name value to store students name
     * @param _dept value to store students department
     * @param _mat value to store students mat
     * @param _eng value to store students eng
     * @param _sci value to store students sci
     * @param _soc value to store students soc
     * @param _cys value to store students cys
     */
    function store(uint128 _roll, string memory _name, string memory _dept, uint8 _mat, uint8 _eng, uint8 _sci, uint8 _soc, uint8 _cys) public {
        rollnumber = _roll;
        name = _name;
        department = _dept;
        mat = _mat;
        eng = _eng;
        sci = _sci;
        soc = _soc;
        cys = _cys;
       
    }

    /**
     * @dev calculate values in variable 
     */
    function calculate() public{
        total = mat+eng+sci+soc+cys;
        average = total/5;
    }

     /**
     * @dev retrieve value 
     * @return rollnumber
     * @return name
     * @return department
     * @return total
     * @return average
     */
    function retrieve()public view returns(uint128,string memory,string memory,uint128,uint128){
        return(rollnumber,name,department,total,average);
    }
}

