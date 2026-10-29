// SPDX-License-Identifier: MIT
pragma solidity^0.8.26;

import "@openzeppelin-contracts-5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin-contracts-5.0.2/access/Ownable.sol";

contract Adaquant is ERC20, Ownable {
    constructor(uint128 initalSupply) ERC20("Adaquant", "ADA") Ownable(msg.sender) {
        _mint(msg.sender, initalSupply * 10 ** decimals());
    }

    function mint(uint128 amount) external onlyOwner {
        _mint(msg.sender, amount * 10 ** decimals());
    }

    function burn(uint128 amount) external {
        _burn(msg.sender, amount * 10 **decimals());
    }
}
