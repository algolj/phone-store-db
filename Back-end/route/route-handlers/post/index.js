const arrayToSqlString = require('../../../utils/array-to-sql-string');

module.exports = async (req, res, pool) => {
  try {
    const { table } = req.params;
    const content = req.body;
    const { rows } = await pool.query(
      `INSERT INTO ${table}(${Object.keys(content).join(
        ',',
      )}) VALUES(${arrayToSqlString(Object.values(content))}) RETURNING *`,
    );
    res.json(rows);
  } catch (error) {
    res.status(422).send('Not invalid value');
    console.error(error.message);
  }
};
