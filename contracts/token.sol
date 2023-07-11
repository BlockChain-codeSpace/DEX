// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Your token contract
contract Token is Ownable, ERC20 {
    string private constant _symbol = "ZEC"; // TODO: Give your token a symbol (all caps!)
    string private constant _name = "ZenCoin"; // TODO: Give your token a name
    bool allowMinting = true;

    constructor() ERC20(_name, _symbol) {}

    // ============================================================
    //                    FUNCTIONS TO IMPLEMENT
    // ============================================================

    // Function _mint: Create more of your tokens.
    // You can change the inputs, or the scope of your function, as needed.
    // Do not remove the AdminOnly modifier!

    function mint(uint amount) public onlyOwner {
        /******* TODO: Implement this function *******/
        if (allowMinting) {
            _mint(msg.sender, amount);
        }
    }

    // Function _disable_mint: Disable future minting of your token.
    // You can change the inputs, or the scope of your function, as needed.
    // Do not remove the AdminOnly modifier!
    function disable_mint() public onlyOwner {
        /******* TODO: Implement this function *******/
        allowMinting = false;
    }
}
