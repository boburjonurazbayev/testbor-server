import { fetch, fetchAll } from "../../lib/postgres.js";
import { SUB1, SUB2, POST } from "./query.js";

const SUBJECT1 = async () => {
  try {
    return await fetchAll(SUB1);
  } catch (error) {
    console.log(error);
  }
};

const SUBJECT2 = async ({ subject1 }) => {
  try {
    subject1 = subject1 ? subject1 : "math";

    return await fetchAll(SUB2, subject1);
  } catch (error) {
    console.log(error);
  }
};

const SUBJECTS = async ({ subject1, subject2 }) => {
  try {
    return await fetch(POST, subject1, subject2);
  } catch (error) {
    console.log(error);
  }
};

export default { SUBJECTS, SUBJECT1, SUBJECT2 };
