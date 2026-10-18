\# Smart Contract Agreement System



\## Overview



This project implements a simple agreement management system using Solidity smart contracts. It allows two parties to confirm an agreement and mark it as completed on the blockchain.



\## Features



\* Stores the addresses of both parties.

\* Stores agreement details and the agreed amount.

\* Allows both parties to confirm the agreement.

\* Completes the agreement only after both parties confirm.

\* Prevents unauthorized users from confirming or completing the agreement.

\* Uses blockchain transactions to maintain the agreement status.



\## Technologies Used



\* Solidity

\* Ethereum Virtual Machine (EVM)

\* Remix IDE

\* Remix VM (Osaka)



\## Smart Contract Functions



\* `confirmAgreement()` – Allows either party to confirm the agreement.

\* `completeAgreement()` – Marks the agreement as inactive after both parties confirm.



\## Testing



The contract was deployed and tested successfully in Remix VM. Both parties confirmed the agreement, and `isActive` became `false` after completion.



\## How to Run



1\. Open https://app.remix.live/

2\. Create a file named `Agreement.sol`.

3\. Paste the Solidity smart contract code.

4\. Compile using a compatible Solidity compiler.

5\. Select Remix VM as the deployment environment.

6\. Deploy the contract with Party B's address, agreement details, and amount.

7\. Test the confirmation and completion functions using the two party accounts.



\## Author



Srisha Reddie



