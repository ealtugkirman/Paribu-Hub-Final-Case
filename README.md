# NFT Transfer & Random NFT Giveaway Contract

This is a sample smart contract for transferring Non-Fungible Tokens (NFTs) and giving away random NFTs to interacting users.

## Contract Structure

The contract contains the following elements:

- `owner`: The address of the contract owner, set to the address of the deployer during contract deployment.
- `NFT` struct: contains metadata of the NFTs, such as artist name, artwork name and creation date.
- `tokenOwnership`: A mapping of address => NFT id => ownership. This is used to track the ownership of each NFT.
- `nftArray`: An array of NFT structs that contains the metadata of all NFTs in the contract.

## Contract Functions

The contract contains the following functions:

- `transfer(address payable _to, uint256 _nftId)`: Transfers the ownership of an NFT from the msg.sender to the specified address.
- `giveRandomNFT()`: Assigns a random NFT to the msg.sender.

## Deployment

To deploy the contract, you will need a tool like Remix or Truffle. Once deployed, the address of the deployer will be set as the `owner` of the contract.

## Interacting with the Contract

To interact with the contract, you will need an Ethereum wallet with Ether and an interface to interact with the contract, such as MetaMask or Truffle.

To transfer an NFT, call the `transfer` function with the address of the recipient and the ID of the NFT you wish to transfer.

To receive a random NFT, call the `giveRandomNFT` function.

Please note that this sample contract is for demonstration purposes only, and should not be used in production without proper testing and security audits.
