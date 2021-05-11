pragma solidity >=0.4.22 <0.6.0; 

contract MartianAuction {
    address deployer; 
    address payable public beneficiary; 
    
    //Current state of the auction 
    
    address public highestBidder; 
    uint public highestBid; 
    
     //Allowed withdrawls of previous bids 
    mapping(address => uint) pendingReturns;
    
    //By default initialized to FALSE 
    //Set to TRUE at the end of the auction 
    
    bool public ended; 
    
    //Events will be emitted on changes. 
    
    event HighestBidIncreased(address bidder, uint amount); 
    
    event AuctionEnded(address winner, uint amount); 
    
    constructor(
        address payable beneficiary) public {
            deployer = msg.sender; 
            beneficiary = _beneficiary; 
        }
        
    function bid(address payable sender) public payable {
        require(msg.value > highestBid, "There is already a higher bid.");
        require(!ended, "auctionEnd has already been called.");
        
        if (highestBid != 0){
            pendingReturns[highestBidder] += highestBid;
        }
        
        highestBidder = sender; 
        highestBid = msg.value; 
        emit HighestBidIncreased(sender, msg.value);
    }
    
    //Withdraw a bid that was overbid 
    function withdraw() public returns(bool) {
        uint amount = pendingReturns[msg.sender];
        if (amount > 0) {
            pendingReturns[msg.sender] = 0; 
            
            if (!msg.sender.send(amount)) {
                //No need to call throw here, just reset the amount owing
                pendingReturns[msg.sender] = amount; 
                return false; 
            }
        }
        return true;
    }
    
    function pendingReturn(address sender) public view returns (uint) {
        return pendingReturns[sender];
    }
    
    function auctionEnd() public {
        require(!ended, "auctionEnd has already been called.");
        require(msg.sender == deployer, "You are not the auction deployer!")
        
        //prerequisites
        ended = true;
        emit auctionEnded(highestBidder, highestBid);
        
        //transactions
        beneficiary.transfer(highestBid);
        
    }
    
}