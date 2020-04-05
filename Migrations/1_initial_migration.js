var Migrations = artifacts.require("./CollectExibits.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
