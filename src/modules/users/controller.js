import model from "./model.js";
import jwt from "../../lib/jwt.js";

const LOGIN = async (req, res) => {
  try {

    console.log(req.body, "----------req.body");
    
    const user = await model.LOGIN(req.body);

    console.log(user, "---------------user");

    if (user) {
      res.status(200).json({
        status: 200,
        message: "succes",
        token: jwt.sign(user),
      });
    } else {
      res.status(401).json({
        status: 401,
        message: "wrong username or password",
        token: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

const REGISTER = async (req, res) => {
  try {
    console.log(req.body, "--------------> req.body");

    const user = await model.REGISTER(req.body);

    console.log(user);

    if (user) {
      res.status(201).json({
        status: 201,
        message: "succes",
        token: jwt.sign(user),
      });
    } else {
      res.status(403).json({
        status: 403,
        message: "This username is already exist",
        token: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

export default { LOGIN, REGISTER };
