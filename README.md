# TuttusToken aka TTS
An ERC20 Tocken made on Etherum Blockchain.

#### Requirements
1. Solidity ([0.4.2](https://solidity.readthedocs.io/en/v0.4.22/installing-solidity.html))
1. Truffle v5.0.15 ([core: 5.0.15](https://github.com/trufflesuite/truffle))
1. Ganache ([2.0.1](https://github.com/trufflesuite/ganache))
1. Node ([v8.11.3](https://nodejs.org/))
1. Web3.js ([v1.0.0-beta.37](https://github.com/ethereum/web3.js/))

#### Setting up Ganache
In truffle-config.js, set:
```
networks: {
   development: {
   host: "127.0.0.1",     // Localhost
   port: 7545,            // Standard Ethereum port, which will be given in Ganache Dashboard
   network_id: "*",       // Any network
   },
```

#### Quantity of Tokens available
In migrations\2_deply_contracts.js, you can set the maximum available tokens available in our model. Here's the declaration of 1,000,000 TTS:
```javascript
var TuttusToken = artifacts.require("./TuttusToken.sol");

module.exports = function(deployer) {
  deployer.deploy(TuttusToken, 1000000);
};

````

#### Migration
Once these all are set, you can migrate the contracts by:
```
truffle migrate
```
<br>

Now you are good to go. Check Ganache for the Ether and Gas spend on deployment of these. Enjoy!
