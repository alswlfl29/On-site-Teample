const { pool } = require("../../data");

/**
 * 영화 리스트 데이터베이스에서 가져오기
 */
exports.movieshow = async () => {
  const query = `SELECT * FROM movie;`;
  return await pool(query);
};
