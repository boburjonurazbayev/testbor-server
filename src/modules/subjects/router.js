import express from "express";
import controller from "./controller.js"

const router = express.Router();

router.get("/subject1", controller.SUBJECT1);
router.post("/subject2", controller.SUBJECT2);
router.post("/subjects", controller.SUBJECTS);

export default router;
