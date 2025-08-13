// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockAlertReceiver {
    event Alert(address trap, string message);

    function receiveAlert(address trap, bytes memory data) external {
        string memory decoded = abi.decode(data, (string));
        emit Alert(trap, decoded);
    }
}
