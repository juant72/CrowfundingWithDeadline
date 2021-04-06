pragma solidity ^0.4.24;

contract CrowdFundingWithDeadline{
    enum State { Ongoing, Failed, Succeeded, PaidOut}

    string public name;
    uint public targetAmount;
    uint public fundingDeadline;
    address public beneficiary;
    State public state;
    
    constructor (
        string contractName,
        uint targetAmmountEth,
        uint durationInMin,
        address beneficiaryAddress
        ) public 
    {
            name=contractName;
            targetAmount=targetAmmountEth * 1 ether;
            fundingDeadline=currentTime() + durationInMin * 1 minutes;
            beneficiary=beneficiaryAddress;
            state=State.Succeeded;
    }


    function currentTime() internal view returns(uint) {
        return now;
    }



}