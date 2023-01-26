const { movieshow } = require("./query");
/**
 * 영화 리스트 가져오기
 */
exports.movielist = async (ctx, next) => {
  let item = await movieshow();

  ctx.body = item;
};
