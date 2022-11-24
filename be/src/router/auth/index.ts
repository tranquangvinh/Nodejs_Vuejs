import express from "express";
import authController from "../../page/auth/auth.controller";
import middlewareAuth from "../../middleware/auth/middleware.auth";
const router = express.Router();
router.post("/register", authController.register);
router.post("/login", authController.login);
router.get("/welcome", authController.welcome, middlewareAuth.verifyToken);
export default router;
