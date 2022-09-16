// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage{
    //if you do not initialize variable with something then it will initialize itself to a 0
    uint256 public favNum;

    ///struct
    struct People{
        uint256 favNum;
        string name;
    }

    //People public person1 = People({favNum:5, name:"Adarsh"});
    //creating list of person

    People [] public people;

    //mapping

    mapping(string => uint256) public nameToFavNum;

    function addPerson(uint256 _favNum, string memory _name) public{
        People memory newPerson =  People({favNum:_favNum, name:_name});
        people.push(newPerson);
        nameToFavNum[_name] = _favNum;
    }

    function store(uint256 _favNum) public{
        favNum = _favNum;
        //now this will cost gas calling pure or view function inside contract function cause extra gas charge
        retrieve();
    }

    // //view and pure fuction doesnot cost any gas because they do not modify the state of blockchain instead they just read the blockchain
    function retrieve()public view returns(uint256){
        return favNum;
    }
}
