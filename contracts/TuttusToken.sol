pragma solidity ^0.4.22;

contract TuttusToken {

    string public name = "Tuttus Token";
    string public symbol = "TTS";
    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    
    function TuttusToken(uint256 _intitialSupply) public {
        balanceOf[msg.sender] = _intitialSupply;
        totalSupply = _intitialSupply;
    }

    // Transfer of Tuttus
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        
        Transfer(msg.sender, _to, _value);

        return true;
    }
}