// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract avaxLinkFeeds {

    AggregatorV3Interface internal priceFeed;
    uint256 public lastTime;
    uint256 public timeDiff;
    int public price;

    /**
     * Network: Fuji
     * Aggregator: AVAX/USD
     * Address: 0x5498BB86BC934c8D34FDA08E81D444153d0D06aD
     * URL: https://docs.chain.link/docs/avalanche-price-feeds/
     */
    constructor() public {
        priceFeed = AggregatorV3Interface(0x5498BB86BC934c8D34FDA08E81D444153d0D06aD);
        lastTime = now;
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
        price = getLatestPrice();
        timeDiff = now - lastTime;
        lastTime = now;
    }
}
