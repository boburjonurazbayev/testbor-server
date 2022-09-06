const GET =
  `SELECT
  u.university_id,
  u.university_name,
  json_agg((f.faculty_id,
  f.faculty_name,
  f.grant_score,
  f.contract_score,
  f.subject_id,
  f.grant_number,
  f.contract_number)) AS faculties
  FROM universities AS u 
  INNER JOIN  faculties AS f  on  u.university_id = f.university_id
  WHERE f.subject_id = $1
  GROUP  BY u.university_id`;


export default {
  GET
};
