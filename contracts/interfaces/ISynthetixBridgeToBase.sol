pragma solidity >=0.4.24;
pragma experimental ABIEncoderV2;

import "./IRewardEscrowV2.sol";


interface ISynthetixBridgeToBase {
    // invoked by users on L2
    function withdraw(uint amount) external;

    function withdrawTo(address to, uint amount) external;

    //  // The following functions can only be invoked by the xDomain messenger on L2
    function finalizeDeposit(address account, uint depositAmount) external;

    // invoked by the xDomain messenger on L2
    function completeEscrowMigration(
        address account,
        uint256 escrowedAmount,
        VestingEntries.VestingEntry[] calldata vestingEntries
    ) external;

    // invoked by the xDomain messenger on L2
    function completeRewardDeposit(uint amount) external;
}
