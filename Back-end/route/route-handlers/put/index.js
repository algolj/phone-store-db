const tableKeys = require('../table-keys');
const stringCorrention = require('../../../utils/sql-string-correction');

module.exports = async (req, res, pool) => {
  try {
    const { table, id } = req.params;
    const content = req.body;
    await Object.entries(content).forEach(async ([name, value]) => {
      await pool.query(
        `UPDATE ${table} SET ${name} = ${stringCorrention(value)} WHERE ${
          tableKeys[table]
        } = ${stringCorrention(id)}`,
      );
    });
    res.json('work');
  } catch (error) {
    res.status(400).send('Error');
    console.error(error.message);
  }
};
