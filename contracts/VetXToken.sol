pragma solidity ^0.4.21;

import "openzeppelin-solidity/contracts/token/ERC827/ERC827Token.sol";
import "openzeppelin-solidity/contracts/lifecycle/Pausable.sol";

contract VetXToken is ERC827Token, Pausable {

    string public name;
    uint8 public decimals;
    string public symbol;

    constructor (
        uint256 _initialAmount,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol
    ) public {
        balances[msg.sender] = _initialAmount;    // Give the creator all initial tokens
        totalSupply_ = _initialAmount;            // Update total supply
        name = _tokenName;                        // Set the name for display purposes
        decimals = _decimalUnits;                 // Amount of decimals for display purposes
        symbol = _tokenSymbol;
    }

    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
        return super.transfer(_to, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value)
        public whenNotPaused returns (bool) {
        return super.transferFrom(_from, _to, _value);
    }

    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
        return super.approve(_spender, _value);
    }

    function increaseApproval(address _spender, uint _addedValue)
        public whenNotPaused returns (bool success) {
        return super.increaseApproval(_spender, _addedValue);
    }

    function decreaseApproval(address _spender, uint _subtractedValue)
        public whenNotPaused returns (bool success) {
        return super.decreaseApproval(_spender, _subtractedValue);
    }

    function approveAndCall(address _spender, uint256 _value, bytes _data)
        public payable whenNotPaused returns (bool) {
        return super.approveAndCall(_spender, _value, _data);
    }

    function transferAndCall(address _to, uint256 _value, bytes _data) public
        payable whenNotPaused returns (bool) {
        return super.transferAndCall(_to, _value, _data);
    }

    function transferFromAndCall (
        address _from,
        address _to,
        uint256 _value,
        bytes _data
    )
        public payable whenNotPaused returns (bool)
    {
        return super.transferFromAndCall(_from, _to, _value, _data);
    }

    function increaseApprovalAndCall(address _spender, uint _addedValue, bytes _data)
        public payable whenNotPaused returns (bool) {
        return super.increaseApprovalAndCall(_spender, _addedValue, _data);
    }

    function decreaseApprovalAndCall(address _spender, uint _subtractedValue, bytes _data)
        public payable whenNotPaused returns (bool) {
        return super.decreaseApprovalAndCall(_spender, _subtractedValue, _data);
    }
}
