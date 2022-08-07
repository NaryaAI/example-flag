// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

import "./Agent.sol";
import "contracts/Vulnerable.sol";

contract FuzzFlag is Agent {
    Flag flag;

    function setUp() public {
        flag = new Flag();
    }
}
