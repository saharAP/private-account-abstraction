// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IAccountOrderCommitment {
    /**
     * Log the hash of an order commitment associated with a specific operation index.
     * This function is intended to be called by the EntryPoint to record the commitment hash,
     * enabling DApps to track and verify commitments and provide a better user experience.
     *
     * @param opIndex The index of the operation associated with the order commitment.
     * @param orderCommitmentHash The hash of the order commitment to be logged (Root Hash).
     */
    function notifyOrderCommitment(
        uint256 opIndex,
        bytes32 orderCommitmentHash
    ) external;
}