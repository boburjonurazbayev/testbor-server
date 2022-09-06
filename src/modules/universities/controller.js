import model from "./model.js";
import jwt from "../../lib/jwt.js";

const GET = async (req, res) => {
  try {
    console.log(req?.headers, "headers");

    const universities = await model.GET(req?.headers?.subjectid);

    console.log(universities, "---------------universities");

    if (universities) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: universities
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "Universities not found",
        data: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

export default { GET };
