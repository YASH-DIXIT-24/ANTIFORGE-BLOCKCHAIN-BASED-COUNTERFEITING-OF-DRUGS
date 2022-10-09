// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Medicine.sol";

contract Manufacturer {
    mapping(address => address[]) public manufacturerMedicines;

    constructor() public {}

    function manufacturerCreatesMedicine(
        address _manufacturerAddr,
        bytes32 _description,
        address[] memory _rawAddr,
        uint256 _quantity,
        address[] memory _transporterAddr,
        address _recieverAddr,
        uint256 RcvrType
    ) public {
        Medicine _medicine = new Medicine(
            _manufacturerAddr,
            _description,
            _rawAddr,
            _quantity,
            _transporterAddr,
            _recieverAddr,
            RcvrType
        );

        manufacturerMedicines[_manufacturerAddr].push(address(_medicine));
    }
}
