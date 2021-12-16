const pool = require('../database-connet');

// handlers
const getAllTable = require('./route-handlers/get/all-table');
const getRow = require('./route-handlers/get/row-table');
const postTable = require('./route-handlers/post');
const putRow = require('./route-handlers/put');
const deleteTable = require('./route-handlers/delete');

module.exports = (app) => {
  app.get('/clustering', (req, res) => {
    res.status(200).send('clustering');
  });

  app.get('/:table', (req, res) => {
    getAllTable(req, res, pool);
  });

  app.get('/:table/:id', (req, res) => {
    getRow(req, res, pool);
  });

  app.post('/:table', async (req, res) => {
    postTable(req, res, pool);
  });

  app.put('/:table/:id', (req, res) => {
    putRow(req, res, pool);
  });

  app.delete('/:table/:id', (req, res) => {
    deleteTable(req, res, pool);
  });
};
