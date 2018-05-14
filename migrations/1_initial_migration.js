var Migrations = artifacts.require('./Migrations.sol')
var Token = artifacts.require('./VetXToken.sol')
var SafeMath = artifacts.require('./SafeMath.sol')

module.exports = async function (deployer) {
  // await deployer.deploy(Migrations)
  deployer.deploy(SafeMath)
  deployer.link(SafeMath, Token)
  deployer.deploy(Token, '1000000000000000000000000000', 'VetX', 18, 'VTX')
}
