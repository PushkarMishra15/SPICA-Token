// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract MyTokenUpgradeable is Initializable, ERC20Upgradeable, OwnableUpgradeable {

    function initialize() external initializer {
        __ERC20_init("SPICA", "SPCA");
        __Ownable_init();
    }

    function mint(address to, uint amount) external onlyOwner {
         require(totalSupply() < 25000000000, "Total supply cannot exceed maximum supply");
        _mint(to, amount);
    }
}
