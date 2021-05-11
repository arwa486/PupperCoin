# PupperCoin Crowdsale Project 


## Objective

The purpose of this project is to demonstrate the use of smart contracts to create [ERC-20](https://eips.ethereum.org/EIPS/eip-20) compliant tokens. 

## Method and Technologies

This project used [Solidity](https://docs.soliditylang.org/en/v0.4.21/index.html) to write the smart contracts and deploy them a localhost Ethereum Virtual Machine (EVM) and various testnet (e.g. [Kovan](https://kovan-testnet.github.io/website/), Ropsten). [Open Zeppelin](https://openzeppelin.com/contracts/) was used to implement the ERC-20 interface and functions into the contract and [Remix IDE](https://remix.ethereum.org/) was use to compile the code. 

[Metamask](https://metamask.io/) and [MyCrypto](https://mycrypto.com/) were used to interface with the contracts through prefunded or testnet addresses. 

## Project Description 

Your company has decided to crowdsale an ERC-20 token to fund a new pet-focused product. This product will be used to create a decentralized network to track dog breeding across the globe. The project has received the "go ahead" from Legal. However, only 300 Ether can be raised and the offer will only last for 24 weeks. If the crowdsale is successful, you must return the excess funding back to the investors. 

## Instructions for Implementation 

1. The first step is setting up two files in Remix for contract: `PupperCoin.sol` and `Crowdsale.sol`. I've provided the files in my `/Contracts` directory for product testing. I've also provided screenshots in the `/Screenshots` directory for reference. 

2. Compile the files in Remix and check to make sure no compile errors are thrown. ![](./Screenshots/check_BalanceRemixIDE.png)

3. If you haven't already, sign up for MyCrypto or Metamask and install the app or extension to create testnet addresses. 

4. Fund the [Kovan](https://faucet.kovan.network/) or [Ropsten](https://faucet.ropsten.be/) testnet addresses with test Ether  from the appropriate faucet.

5. Deploy the `Crowdsale.sol` contract to one of the funded addresses. Fill in  Be sure that the Enviroment is set to `Injected Web3`. If linked correctly, Metamask should popup and you will click "Confirm" the transaction. ![](./Screenshots/deployed_KovanTestnet2.png)

    NB: if the contract fails to deploy, increase the gas limit until it does. 

6. Experiment with the call functions on the right side to mint the "PupperCoin" and send it to another address in your wallet. You may receive a notification from Metamask that the transaction has been confirmed on the testnet. ![](./Screenshots/etherscan_confirmation.png)

## Contact: 

If you have questions regarding the project, please contact: 

[Alex Rwamashongye](https://github.com/arwa486)