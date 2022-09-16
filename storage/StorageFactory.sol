//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleArrayStorage;

 function createSimpleStorageContract() public{
     SimpleStorage simpleStrg = new SimpleStorage();
     simpleArrayStorage.push(simpleStrg);
 }
 
 function storeSimpleStorage(uint256 _index, uint256 _storeNum) public{
     SimpleStorage simpleStorage = simpleArrayStorage[_index];
     simpleStorage.store(_storeNum);
 }

 function getSimpleStorage(uint256 _index) public view returns(uint256){
     SimpleStorage simpleStorage = simpleArrayStorage[_index];
     return simpleStorage.retrieve();
 }

}
