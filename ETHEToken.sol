// SPDX-License-Identifier: MIT
//.
pragma solidity ^0.8.0;
import "./BEP20Detailed.sol";
import "./token/ERC20/BEP20.sol";


contract ETHEToken is BEP20Detailed, BEP20 {
  constructor() BEP20Detailed("EtheKing", "ETHE", 18) {
    uint256 totalTokens = 100000000 * 10**uint256(decimals());
    _mint(msg.sender, totalTokens);
  }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
}