var TuttusToken = artifacts.require("./TuttusToken.sol");

module.exports = function(deployer) {
  deployer.deploy(TuttusToken, 1000000);
};
