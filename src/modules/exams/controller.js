import model from "./model.js";
import jwt from "../../lib/jwt.js";

const GET = async (req, res) => {
  try {
    let exams = await model.GET();

    if (exams) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: exams,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "Exams not found",
        data: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

const POST = async (req, res) => {
  try {
    let user_id = jwt.verify(req.headers?.token).user_id
    
    let exam = await model.POST(req.body, user_id);

    if (exam) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: exam,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "exams not found",
        data: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

export default { GET, POST };
