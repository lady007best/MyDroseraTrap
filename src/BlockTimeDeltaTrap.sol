// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ITrap.sol";

contract BlockTimeDeltaTrap is ITrap {
    uint256 public constant DELTA_THRESHOLD = 12; // секунд
    uint256 private lastTimestamp;

    constructor() {
        lastTimestamp = block.timestamp;
    }

    function collect() external view override returns (bytes memory) {
        uint256 delta = block.timestamp - lastTimestamp;
        return abi.encode(delta);
    }

    function shouldRespond(bytes[] calldata data) external pure override returns (bool, bytes memory) {
        if (data.length < 1) {
            return (false, abi.encode("No data"));
        }
        uint256 delta = abi.decode(data[0], (uint256));
        if (delta > DELTA_THRESHOLD) {
            return (true, abi.encode("Time gap detected"));
        }
        return (false, abi.encode("OK"));
    }
}
