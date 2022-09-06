import { fetchAll } from "../../lib/postgres.js";
import query from "./query.js";

const GET1 = async (subject1 ) => {
  try {
    return await fetchAll(query.GET1, subject1);
  } catch (error) {
    console.log(error);
  }
};

const GET2 = async (subject2 ) => {
  try {
    return await fetchAll(query.GET1, subject2);
  } catch (error) {
    console.log(error);
  }
};


export default {
  GET1, GET2
};
