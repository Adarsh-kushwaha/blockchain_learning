// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage{
    //if you do not initialize variable with something then it will initialize itself to a 0
    uint256 public favNum;

    function store(uint256 _favNum) public{
        favNum = _favNum;
        //now this will cost gas calling pure or view function inside contract function cause extra gas charge
        retrieve();
    }

    //view and pure fuction doesnot cost any gas because they do not modify the state of blockchain instead they just read the blockchain
    function retrieve()public view returns(uint256){
        return favNum;
    }
}
