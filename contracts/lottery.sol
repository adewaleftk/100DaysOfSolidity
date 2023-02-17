// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.8.17 <0.9.0;

contract Lottery {
    address payable public manager; // Address of the manager of the lottery
    address payable[] public players; // Addresses of the participants in the lottery
    uint256 public pot; // The amount of money in the pot
    bool public ended; // Flag to indicate if the lottery has ended
    uint256 constant public TICKET_PRICE = 1 ether; // Price per lottery ticket
    
    constructor() {
        manager = payable(msg.sender);
        pot = 0;
        ended = false;
    }
    
    function buyTicket() public payable {
        require(msg.value == TICKET_PRICE, "Ticket price is 1 ether");
        require(!ended, "Lottery has ended");
        players.push(payable(msg.sender));
        pot += msg.value;
    }
    
    function endLottery() public {
        require(msg.sender == manager, "Only the manager can end the lottery");
        require(!ended, "Lottery has already ended");
        uint256 winnerIndex = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, players.length))) % players.length;
        players[winnerIndex].transfer(pot);
        pot = 0;
        ended = true;
    }
    
    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }
}
