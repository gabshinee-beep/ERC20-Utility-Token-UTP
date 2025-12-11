// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// UTP = Utility Token de Portafolio
contract UTPToken is ERC20, Ownable {

    // Se define la cantidad inicial de tokens (1 millón con 18 decimales)
    uint256 private constant INITIAL_SUPPLY = 1000000000000000000000000;

    // Constructor: Ahora le pasamos el 'owner' al contrato Ownable.
    constructor() 
        // 1. Llama al constructor de ERC20
        ERC20("Utility Portfolio Token", "UTP") 
        // 2. Llama al constructor de Ownable y le pasa el propietario inicial (quien despliega el contrato)
        Ownable(msg.sender)
    {
        // 3. Ejecuta la función interna _mint
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
