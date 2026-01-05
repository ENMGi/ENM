// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ENMGi_Enterprise is ERC20, Ownable {
    constructor() ERC20("ENMGi Enterprise", "ENM") Ownable(msg.sender) {
        // Mint 10 Million ENM to your new wallet immediately
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }

    // The Function your Python Script calls to mint profit
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

 
