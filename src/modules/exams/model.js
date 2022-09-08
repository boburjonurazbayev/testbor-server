import {fetch, fetchAll } from "../../lib/postgres.js";
import query from "./query.js";

const GET = async () => {
  try {
    return await fetchAll(query.GET);
  } catch (error) {
    console.log(error);
  }
};

const POST = async ({score,faculty_id,s1_ans,s2_ans,exam_res_type},user_id ) => {
  try {
    return await fetch(query.POST, score, user_id, faculty_id, s1_ans, s2_ans, exam_res_type );
  } catch (error) {
    console.log(error);
  }
};


export default {
  GET, POST
};
