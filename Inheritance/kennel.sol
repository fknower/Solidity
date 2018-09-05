pragma solidity ^0.4.24; 
contract DogContract{
    struct Dog {
        string Name;
        uint Age;
    }
    Dog[] dogs;
    mapping(address => uint) ownerToDog;
    function AddDog(string _Name, uint _Age) internal {
     //msg.sender is current account address
    address owner = msg.sender;
        uint id = dogs.push(Dog(_Name,_Age));
        ownerToDog[owner] = id;
    }
    function GetDog() view returns(string){
        address owner = msg.sender;
        uint id = ownerToDog[owner];
        return dogs[id-1].Name;
    }  
}
