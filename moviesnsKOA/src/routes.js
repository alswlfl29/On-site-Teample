const Router = require("@koa/router");
const router = new Router();
const multer = require("@koa/multer");
const path = require("path");
const upload = multer({
  dest: path.resolve(__dirname, "../", "storage"),
});

const { myLogging } = require("./middleware/logging");
// const { verify } = require("./middleware/auth");

// const webController = require("./web/controller");
// const apiUserController = require("./api/user/controller");
const apiMovieController = require("./api/movie/controller");
// const apiFeedController = require("./api/feed/controller");

// router.use(myLogging);

// router.post(
//   "/file/upload",
//   upload.single("file"),
//   require("./api/file/controller").upload
// );
// router.get("/file/:id", require("./api/file/controller").download);

// router.get("/", myLogging, webController.home);
// router.get("/page/:page", myLogging, webController.page);

// router.post("/api/user/register", apiUserController.register);
// router.post("/api/user/login", apiUserController.login);
// router.get("/api/user/:id", apiUserController.info);

router.get("/api/movie", apiMovieController.movielist);

//인증에 필요한 route에 검증 추가
// router.use(verify);
// router.get("/api/user/:id", apiUserController.info);

// router.get("/api/feed", apiFeedController.index);
// router.post("/api/feed", apiFeedController.store);
// router.get("/api/feed/:id", apiFeedController.show);
// router.put("/api/feed/:id", apiFeedController.update);
// router.delete("/api/feed/:id", apiFeedController.delete);

module.exports = router;
