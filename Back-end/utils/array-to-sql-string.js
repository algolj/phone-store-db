module.exports = (arr) => arr
  .reduce(
    (acc, el) => `${acc}${typeof el === 'string' ? `'${el}'` : el},`,
    '',
  )
  .slice(0, -1);
