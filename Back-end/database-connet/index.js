const { Pool } = require('pg');

const databaseConfig = require('./database-config');

const pool = new Pool(databaseConfig);

module.exports = pool;
