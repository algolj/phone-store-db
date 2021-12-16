const tableKeys = require('../table-keys');
const stringCorrention = require('../../../utils/sql-string-correction');

module.exports = async (req, res, pool) => {
  try {
    const { table, id } = req.params;
    await pool.query(
      `DELETE FROM ${table} WHERE ${tableKeys[table]} = ${stringCorrention(id)}`,
    );
    res.json(['delete']);
  } catch (error) {
    res.status(424).send('Failed to delete');
    console.error(error.message);
  }
};
