// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleToken is ERC20, Ownable {
    constructor() ERC20("My Simple Token", "STK") {
        _mint(msg.sender, 10**6 * 10**18);
    }

    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }
}
