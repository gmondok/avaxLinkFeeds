# avaxLinkFeeds
Using Chainlink Price Feeds on Avalanche. If you'd like to read the verbose version, check [out the blog.] (link is TBD)

## Quickstart
1. Head over to [`remix`](https://remix.ethereum.org/?#gist=8c19940a9c1b96bc453cbd43378df63c)
2. Compile using `0.8.0` version of solidity or above. 
3. Setup your Metamask to work with Avalanche:
```
Network Name: Avalanche FUJI C-Chain  
New RPC URL: https://api.avax-test.network/ext/bc/C/rpc  
ChainID: 43113  
Symbol: AVAX  
Explorer: https://cchain.explorer.avax-test.network  
```
4. Deploy the contract with "Injected Web3" environment
5. Run "getLatestPrice" to retrieve price data
