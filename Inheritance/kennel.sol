pragma solidity ^0.4.24;
import './dog.sol';
contract Kennel is DogContract {
    function TransferDog(address _NewOwner) public returns (uint){
        address owner = msg.sender;
        uint dogId = ownerToDog[owner];
        delete(ownerToDog[owner]);
        ownerToDog[_NewOwner]= dogId;
    }  
  function addKennelDog(string _name, uint _age) public{
        AddDog(_name, _age);
    }
}
