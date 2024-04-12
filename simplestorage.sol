// SPDX-License-Identifier: MIT 
pragma solidity >= 0.6.0 <0.9.0;
contract simplestorage {
    //will get initialized to 0
    uint256 favoriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }
    People public person = People({favouriteNumber: 2, name: "patrick"});
    function store(uint256 _favouriteNumber) public{
        favoriteNumber = _favouriteNumber;
    }
    //view , pure are used for reading the state of the blockchain
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}
