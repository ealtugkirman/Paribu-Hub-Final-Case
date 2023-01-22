// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract RandomNft {
    address payable private owner;
    struct NFT {
        string artistName;
        string artworkName;
        string creationDate;
    }
    mapping(address => mapping(uint256 => bool)) public tokenOwnership; // Mapping of address => NFT id => ownership
    NFT[] public nftArray;

    constructor() {
        owner = msg.sender;
        for (uint256 i = 0; i < 333; i++) {
            nftArray.push(NFT("Al2", "Paribuhub", "2022-01-22")); // Add NFT to array
            tokenOwnership[msg.sender][i] = true; // Initialize ownership of NFT to msg.sender
        }
    }

    function transfer(address payable _to, uint256 _nftId) public {
        require(tokenOwnership[msg.sender][_nftId]); // Check that msg.sender is the owner of the NFT
        tokenOwnership[msg.sender][_nftId] = false; // Remove ownership from msg.sender
        tokenOwnership[_to][_nftId] = true; // Assign ownership to _to address
    }

    function giveRandomNFT() public {
        uint256 randomNFT = uint256(
            keccak256(abi.encodePacked(block.timestamp, msg.sender))
        ) % nftArray.length; // Get random NFT id
        require(!tokenOwnership[msg.sender][randomNFT]); // Check that random NFT is not already owned by msg.sender
        tokenOwnership[msg.sender][randomNFT] = true; // Assign ownership of random NFT to msg.sender
    }
}
