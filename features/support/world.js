const { setWorldConstructor } = require('@cucumber/cucumber');
const cp = require('child_process');

class RulesWorld {
  constructor() {}

  runCmd(fixtureDirectory) {
    const cmd = `npx vale --output=line --sort --normalize --relative --config=${fixtureDirectory}/.vale.ini`;
    var valeResult = cp.spawnSync(`${cmd}`, [`${fixtureDirectory}`], {
      shell: true,
    });
    // console.log(`valeResult: ${valeResult.stdout}`);
    return valeResult.stdout;
  }
}

setWorldConstructor(RulesWorld);
