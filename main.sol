// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract OLJ is ERC20, Ownable {
    constructor(address initialOwner) ERC20("OLJ", "OLJ") Ownable(initialOwner) {
        _mint(msg.sender, 1000 * 10 ** 18); // Указываем количество токенов с 18 десятичными знаками
    }
    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); // Вызываем внутреннюю функцию _mint для создания новых токенов и отправки их адресу to
    }
}
