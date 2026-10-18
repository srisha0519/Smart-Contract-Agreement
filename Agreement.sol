
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Agreement {

    address public partyA;
    address public partyB;

    string public agreementDetails;
    uint256 public amount;

    bool public partyAConfirmed;
    bool public partyBConfirmed;
    bool public isActive;

    constructor(
        address _partyB,
        string memory _details,
        uint256 _amount
    ) {
        require(_partyB != address(0), "Invalid party B");
        require(_partyB != msg.sender, "Parties must differ");

        partyA = msg.sender;
        partyB = _partyB;
        agreementDetails = _details;
        amount = _amount;
        isActive = true;
    }

    function confirmAgreement() public {
        require(isActive, "Agreement is inactive");
        require(
            msg.sender == partyA || msg.sender == partyB,
            "Not an agreement party"
        );

        if (msg.sender == partyA) {
            partyAConfirmed = true;
        } else {
            partyBConfirmed = true;
        }
    }

    function completeAgreement() public {
        require(isActive, "Already inactive");
        require(
            msg.sender == partyA || msg.sender == partyB,
            "Not an agreement party"
        );
        require(
            partyAConfirmed && partyBConfirmed,
            "Both parties must confirm"
        );

        isActive = false;
    }
}