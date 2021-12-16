module.exports = async (req, res, pool) => {
  try {
    const { table } = req.params;
    const { rows } = await pool.query(`SELECT * FROM ${table}`);
    res.json(rows);
  } catch (error) {
    res.status(400).send('Not found table');
    console.error(error.message);
  }
};
