import model from "./model.js";
import jwt from "../../lib/jwt.js";

const SUBJECT1 = async (req, res) => {
  try {
    const sub1 = await model.SUBJECT1();

    if (sub1) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: sub1,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "subjects not found",
        data: null,
      });
    }
  } catch (error) {
    console.error(error);
  }
};

const SUBJECT2 = async (req, res) => {
  try {
    const sub2 = await model.SUBJECT2(req.body);

    if (sub2) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: sub2,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "subjects not found",
        data: null,
      });
    }
  } catch (error) {
    console.error(error);
  }
};

const SUBJECTS = async (req, res) => {
  try {
    const subjects = await model.SUBJECTS(req.body);


    if (subjects) {
      res.status(200).json({
        status: 200,
        message: "succes",
        subjects: subjects,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "subjects did not match",
        subjectId: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

export default { SUBJECTS, SUBJECT1, SUBJECT2 };
