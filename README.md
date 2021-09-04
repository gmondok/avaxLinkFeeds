# avaxLinkFeeds
Using Chainlink Price Feeds on Avalanche

Call getAvaxPrice() twice in a row, wait for data to update, read the "price" field to see the price of AVAX/USD.
For fun, read the "timeDiff" field to see how long it took between price reads (~3 seconds in my testing, including my time to send the 2nd tx)
