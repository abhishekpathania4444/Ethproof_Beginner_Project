// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// This smart contract introduces a token with functionalities for minting and burning tokens.

// Contract definition
contract MyToken {

    // State variables
    string public tokenName = "Abhishek";
    string public tokenSymbol = "abhi";
    uint256 public totalSupply = 0;

    // Mapping to track token balances
    mapping(address => uint256) public balances;

    // Minting function to create new tokens
    function mintTokens(address _to, uint256 _value) external {
        require(_to != address(0), "Invalid address");
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burning function to destroy tokens
    function burnTokens(uint256 _value) external {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }
}
