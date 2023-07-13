// SPDX-License-Identifier: Nonlicensed
pragma solidity 0.8.18;


interface IOracle {
     /// @notice Receives a student's NETID and marks it as being submitted, reverts if a value not equal to 1 Wei is sent
    /// @param netID a lowercase string of the student's netID, NO WHITESPACES
    /// @return bool indictating success of operation
    function sendNetID(string memory netID) external payable returns (bool);
}

contract MyContract {

    bool yes;
    IOracle stt;

    receive() external payable {
    }   

    function call_send(string memory netID) public payable returns (bool) {
        address random = 0xfb89eB43BB091f668A53ECC09bF1d895DDcB0887;
        stt = IOracle(random);
        yes = stt.sendNetID{value: 1}(netID);
        return yes;
    }

}