pragma solidity 0.5.1;
contract MyContract{
   mapping(address => unit256) public balances;
    address payable wallet;

    constructor(address _wallet) public{
        wallet = _wallet
    }

    function buyToekn() public payable{
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
    }
}
