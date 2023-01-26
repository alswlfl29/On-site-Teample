/** 사이트 메인 페이지 */
exports.home = (ctx, next) => {
  console.log("홈페이지 호출");
  ctx.body = "Hello Wodddrld";
};
/** 약관, 개인정보처리방침 등 정적 페이지 */
exports.page = async (ctx, next) => {
  let page = ctx.params.page; //아래와 완전히 똑같다.
  //let {name}=ctx.params; 위와 완전히 똑같다.
  let pagename = "";
  let content;
  switch (page) {
    case "terms":
      pagename = "이용약관";
      break;
    case "policy":
      pagename = "개인정보 처리방침";
      break;
    default:
      pagename = "오류!";
      break;
  }
  // ctx.body =( `<html>
  // <body style="background-color:grey;">
  // <h1 style="color: yellow;">hello world</h1>
  // </body></html>`);
  await ctx.render("index", { pagename: pagename });
};
