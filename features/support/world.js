const { setWorldConstructor } = require('@cucumber/cucumber');
const cp = require('child_process');

class RulesWorld {
  #valeCmd;

  constructor() {
    this.#valeCmd = 'vale --output=line --sort --normalize --relative';
  }

  setCwd(directory) {
    process.chdir(directory);
  }

  runCmd() {
    var valeResult = cp.spawnSync(`${this.#valeCmd}`, ['.'], { shell: true });
    // console.log(`valeResult: ${valeResult.stdout}`);
    return valeResult.stdout;
  }
}

setWorldConstructor(RulesWorld);
