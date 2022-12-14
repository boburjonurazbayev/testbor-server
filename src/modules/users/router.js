import express from "express";
import controller from "./controller.js"

const router = express.Router();

router.post("/login", controller.LOGIN);
router.post("/register", controller.REGISTER)

export default router;
