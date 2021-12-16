module.exports = (str) => (Number.isNaN(Number(str)) ? `'${str}'` : str);
