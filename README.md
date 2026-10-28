# Smart Contract Agreement System

## Overview

The Smart Contract Agreement System is a blockchain-based application developed using Solidity. It allows two parties to participate in a digital agreement, confirm the agreed terms, and complete the agreement through smart contract transactions.

The project demonstrates how blockchain technology can help manage agreements transparently and enforce predefined rules without relying on a centralized application.

## Features

- Stores the wallet addresses of both parties.
- Records agreement details and the agreed amount.
- Allows both parties to confirm the agreement.
- Completes the agreement only after both parties have confirmed.
- Restricts confirmation and completion actions to authorized parties.
- Maintains agreement status through blockchain transactions.
- Uses smart contract conditions to prevent invalid operations.

## Technologies Used

- Solidity
- Ethereum Virtual Machine (EVM)
- Remix IDE
- Remix VM (Osaka)

## Smart Contract Functions

- `confirmAgreement()` — Allows an authorized party to confirm the agreement.
- `completeAgreement()` — Completes the agreement after both parties have confirmed.
- `isActive` — Indicates whether the agreement is still active.

## Testing

The smart contract was compiled, deployed, and tested successfully using Remix VM.

The following operations were verified:

1. Deployed the contract with two different party addresses.
2. Confirmed the agreement using both parties.
3. Completed the agreement after both confirmations.
4. Verified that `isActive` became `false` after completion.

## How to Run

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a Solidity file named `Agreement.sol`.
3. Paste the smart contract source code into the file.
4. Compile the contract using a compatible Solidity compiler.
5. Select Remix VM under **Deploy & Run Transactions**.
6. Deploy the contract using the required constructor parameters, including Party B's address, agreement details, and amount.
7. Switch between the two authorized party accounts to test agreement confirmation.
8. Call `completeAgreement()` after both parties have confirmed.
9. Verify that the agreement is no longer active.

**Note:** The constructor parameters must match the actual `Agreement.sol` source code in this repository.

## Learning Outcomes

- Understanding Solidity smart contract development.
- Learning how blockchain transactions modify contract state.
- Implementing access control and authorization.
- Working with multiple Ethereum accounts in Remix.
- Testing smart contract functions in a simulated blockchain environment.

## Author

**Srisha Reddie**

## Disclaimer

This project is intended for educational purposes. It demonstrates a simplified agreement workflow and is not a substitute for legal advice or a professionally audited agreement system.
