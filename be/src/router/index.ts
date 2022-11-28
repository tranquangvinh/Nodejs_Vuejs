import express from "express";
import authController from "../page/auth/auth.controller";
import middlewareAuth from "../middleware/request/request.auth";
import schema from "../middleware/schema/schema.postSeeder";
import { validate } from "../utils/commons";

const router = express.Router();
router.post("/register", authController.register, validate(schema));
router.post("/login", authController.login);
router.get("/welcome", middlewareAuth.verifyToken, authController.welcome);
export default router;
