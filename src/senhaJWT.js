const fs = require('fs');
const config = JSON.parse(fs.readFileSync('configuracoes.json'));

module.exports = config.senhaJWT;