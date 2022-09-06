import { fetch } from "../../lib/postgres.js";
import { GET, POST } from "./query.js";

const LOGIN = async ({ username, password }) => {
  try {

    console.log(username, password, "username, password");
    
    return await fetch(GET, username, password);
  } catch (error) {
    console.log(error);
  }
};

const REGISTER = async ({ fullname, username, contact, password, gender }) => {
  try {
    return await fetch(POST, fullname, username, contact, password, gender);
  } catch (error) {
    console.log(error);
  }
};

export default {
  LOGIN,
  REGISTER,
};
