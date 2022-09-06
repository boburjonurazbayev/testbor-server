import express from "express";
import controller from "./controller.js"

const router = express.Router();

router.get("/test1", controller.GET1)
router.get("/test2", controller.GET2)

export default router;
