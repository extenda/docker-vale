const { When, Then } = require('@cucumber/cucumber');
const assert = require('assert').strict;

When('I test {string}', function (string) {
  // console.log(`Rule: ${string}`);
  // this.setCwd(`fixtures/${string}`);

  // Run predefined vale command with `fixtures/${RULE}`
  this.result = this.runCmd(`fixtures/${string}`);
});

Then('the output should contain exactly:', function (docString) {
  // console.log(`actual: ${this.result}`);
  // console.log(`expected: ${docString}`);
  // We have to add a new line at the end of the expected (docString) because this is how we get it from spawnSync().
  assert.equal(this.result.toString(), docString.toString() + '\n');
});
