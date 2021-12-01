// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract FindThisHash {
    bytes32 public constant hash =
        0x564ccaf7594d66b1eaaea24fe01f0585bf52ee70852af4eac0cc4b04711cd0e2;

    constructor() payable {}

    function solve(string memory solution) public {
        require(
            hash == keccak256(abi.encodePacked(solution)),
            "Incorrect answer"
        );

        (bool sent, ) = msg.sender.call{value: 10 ether}("");
        require(sent, "Failed to send Ether");
    }
}
