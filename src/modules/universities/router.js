import express from "express";
import controller from "./controller.js"

const router = express.Router();

router.get("/universities", controller.GET)

export default router;
