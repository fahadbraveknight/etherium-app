pragma solidity ^0.4.7;


contract CollectExibits{
    
 //mapping of sender and receiver
mapping(address => string) public roles;


//Constructor to initialize few users at first boot	
function CollectExibits()  public {
    
 //roles[123].push("asd");// = roles("sender");
 addDefaultRoles(0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,"receiver");
 addDefaultRoles(0xca35b7d915458ef540ade6068dfe2f44e8fa733c,"sender");
}

function addDefaultRoles(address userAddress, string userRole ) private{
    
    roles[userAddress] = userRole ;
    
}

//Check if the user is correct sender or receiver or not
address private sender ;
//each exibit has some properties. feel free to add your own
struct exibitDetails {
    
    uint  id ;
    string name;
    string location;
}

//When you send/receive the exibits, they are not 
//sent as a single peice but as a consignment
struct consignmentDetails{
	uint consignmentId;
	exibitDetails[] listOfExibits;

}

//Add exibit details which we will send to forensic lab for fuether testing
function addNewExibit  (exibitDetails[] eDetails) public returns(bool){
       
    	require(roles[msg.sender] == "sender");
    	 bool hasExibitAdded = false;
    	//Add consignment and  exibit details
        CollectExibits.exibitDetails.id = 123;
    	exibitDetails.name = "bullet";
    	exibitDetails.location = "London";
    	consignmentDetails.listOfExibits.Add(exibitDetails);
    	consignmentDetails.consignmentId = 123;
    	
    	return hasExibitAdded;
    	
    
}

}
