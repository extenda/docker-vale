const { setWorldConstructor } = require('@cucumber/cucumber');
const cp = require('child_process');

class RulesWorld {
  #valeCmd;

  constructor() {
    this.#valeCmd = 'npx vale --output=line --sort --normalize --relative';
  }

  runCmd(fixtureDirectory) {
    var valeResult = cp.spawnSync(`${this.#valeCmd}`, [`${fixtureDirectory}`], {
      shell: true,
    });
    // console.log(`valeResult: ${valeResult.stdout}`);
    return valeResult.stdout;
  }
}

setWorldConstructor(RulesWorld);
