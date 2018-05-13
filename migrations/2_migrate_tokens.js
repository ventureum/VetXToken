var Token = artifacts.require("./VetXToken.sol");

module.exports = function(deployer) {
  deployer.deploy(Token, "1000000000000000000000000000", "VetX", 18, "VTX");;
};
