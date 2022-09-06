import model from "./model.js";
import jwt from "../../lib/jwt.js";

const GET1 = async (req, res) => {
  try {
    let tests = await model.GET1(req?.headers?.subject1);

    if (tests) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: tests,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "Tests not found",
        data: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

const GET2 = async (req, res) => {
  try {
    let tests = await model.GET2(req?.headers?.subject2);

    if (tests) {
      res.status(200).json({
        status: 200,
        message: "succes",
        data: tests,
      });
    } else {
      res.status(404).json({
        status: 404,
        message: "Tests not found",
        data: null,
      });
    }
  } catch (error) {
    console.log(error);
  }
};

export default { GET1, GET2 };
