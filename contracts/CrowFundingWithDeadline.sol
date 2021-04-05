pragma solidity ^0.4.24;

contract CrowFundingWithDeadline{
    enum State {Ongoing, Failed, Succeded, PaidOut}

    string public name;
    uint public targetAmount;
    uint public fundingDeadline;
    address public beneficiary;
    State public state;
  


}