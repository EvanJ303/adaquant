// SPDX-License-Identifier: MIT
pragma solidity^0.8.26;

import "@openzeppelin-contracts-5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin-contracts-5.0.2/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin-contracts-5.0.2/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin-contracts-5.0.2/token/ERC20/extensions/ERC20Wrapper.sol";

contract AdaquantGov is ERC20, ERC20Permit, ERC20Wrapper, ERC20Votes {
    constructor(IERC20 Adaquant)
        ERC20("Adaquant Governance", "ADAGOV")
        ERC20Permit("Adaquant Governance")
        ERC20Wrapper(Adaquant)
    {}

    function decimals() public view override(ERC20, ERC20Wrapper) returns (uint8) {
        return super.decimals();
    }

    function _update(address from, address to, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._update(from, to, amount);
    }

    function nonces(address owner) public view override(ERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner);
    }
}
