//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "./SimpleStorage.sol";

//inheritance
contract ExtraStorage is SimpleStorage{
    //add ovrride specifier for overrrideing function and virtual keyword to the function which is overriding
    function store(uint256 _favNum) public override {
        favNum = _favNum +5;
    }
}
