import express from "express";
import controller from "./controller.js"

const router = express.Router();

router.get("/exam", controller.GET)
router.post("/exam", controller.POST)

export default router;
