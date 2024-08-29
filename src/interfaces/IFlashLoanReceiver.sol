// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.20;

// @audit-info: unused import
// it's bad practiice to edit live code for tests/mock
// import { IThunderLoan } from "./IThunderLoan.sol";

/**
 * @dev Inspired by Aave:
 * https://github.com/aave/aave-v3-core/blob/master/contracts/flashloan/interfaces/IFlashLoanReceiver.sol
 */
interface IFlashLoanReceiver {
    // @audit-info Add the natspec?
    // q what is the token, the token that's being borrowed ?
    // q amount is the amount of the tokens?
    function executeOperation(
        address token,
        uint256 amount,
        uint256 fee,
        address initiator,
        bytes calldata params
    ) external returns (bool);
}
