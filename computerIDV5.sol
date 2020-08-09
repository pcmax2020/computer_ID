pragma solidity ^0.5.0;

contract  ComputerID{
    
   string Computer_ID;
   string ISP_Detail;
   string Firewall_Name;
   string VPN_Name;
   uint Age;
   bool AgeRestriction;
   
   function SetUserInfo(string memory _Computer_ID, string memory _ISP_Detail,string memory _Firewall_Name,
   string memory _VPN_Name, uint _Age) public {
       Computer_ID = _Computer_ID;
       Firewall_Name = _Firewall_Name;
       VPN_Name = _VPN_Name;
       ISP_Detail = _ISP_Detail;
       Age = _Age;
       if (Age >= 18)  {AgeRestriction = false;
       }
       else AgeRestriction = true;
   }
   
   function GetUserInfo() public view returns (string memory, string memory,string memory,string memory, uint,bool) {
return (Computer_ID, ISP_Detail, Firewall_Name,VPN_Name, Age, AgeRestriction);
   }
    
}