const tableKeys = require('../table-keys');
const stringCorrention = require('../../../utils/sql-string-correction');

module.exports = async (req, res, pool) => {
  try {
    const { table, id } = req.params;
    const { rows } = await pool.query(
      `SELECT * FROM ${table} WHERE ${tableKeys[table]} = ${stringCorrention(
        id,
      )}`,
    );
    res.json(rows);
  } catch (error) {
    res.status(400).send('Not found');
    console.error(error.message);
  }
};
