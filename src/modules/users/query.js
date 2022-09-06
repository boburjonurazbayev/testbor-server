const GET =
  `SELECT u.* FROM users AS u WHERE username = $1 and password = crypt($2, u.password)`;

const POST = `
INSERT INTO users (fullname, username, contact, password, gender) 
VALUES ($1, $2, $3, crypt($4, gen_salt('bf')), $5) RETURNING *
`


export {
  GET, POST
};
