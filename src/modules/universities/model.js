import { fetchAll } from "../../lib/postgres.js";
import query from "./query.js";

const GET = async ( subjectid ) => {
  try {
    return await fetchAll(query.GET, subjectid);
  } catch (error) {
    console.log(error);
  }
};

export default {
  GET,
};
