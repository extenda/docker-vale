const { When, Then } = require('@cucumber/cucumber');
const assert = require('assert').strict;

When('I test {string}', function (string) {
  // console.log(`Rule: ${string}`);
  this.setCwd(`fixtures/${string}`);
  this.result = this.runCmd();
});

Then('the output should contain exactly:', function (docString) {
  // console.log(`actual: ${this.result}`);
  // console.log(`expected: ${docString}`);
  // Have to add a new line at the end of the expected (docString) because this is how we get it from spawnSync().
  assert.equal(this.result.toString(), docString.toString() + '\n');
});
