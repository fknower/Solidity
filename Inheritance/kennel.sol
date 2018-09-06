pragma solidity ^0.4.24;
import './dog.sol';
contract Kennel is DogContract {
    function TransferDog(address _NewOwner) public returns (uint){
        address owner = msg.sender;
        // error chech if owner is old owner
        require(owner != _NewOwner);
        uint dogId = ownerToDog[owner];
        delete(ownerToDog[owner]);
        ownerToDog[_NewOwner]= dogId;
        // error check that old owner has no dog
        assert(ownerToDog[owner] == 0);
    }  
  function addKennelDog(string _name, uint _age) public{
        AddDog(_name, _age);
    }
}
