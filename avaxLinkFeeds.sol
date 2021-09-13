// SPDX-License-Identifier: MIT
pragma solidity 0.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract AvaxLinkFeeds {

    AggregatorV3Interface internal priceFeed;
    uint256 public lastTime;
    uint256 public timeDiff;
    int public avaxPrice;

    /**
     * Network: Fuji
     * Aggregator: AVAX/USD
     * Address: 0x5498BB86BC934c8D34FDA08E81D444153d0D06aD
     * URL: https://docs.chain.link/docs/avalanche-price-feeds/
     */
    constructor() public {
        priceFeed = AggregatorV3Interface(0x5498BB86BC934c8D34FDA08E81D444153d0D06aD);
        lastTime = block.timestamp;
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() internal view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
    
    function getAvaxPrice() public {
        avaxPrice = getLatestPrice();
        timeDiff = block.timestamp - lastTime;
        lastTime = block.timestamp;
    }
}
