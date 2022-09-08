const GET = `select 
e.exam_id,
e.exam_time,
e.s1_ans,
e.s2_ans,
e.score,
e.exam_res,
uf.university_name,
uf.faculty_name,
us.username,
us.fullname
from exams as e
inner join (
select
u.university_name,
f.faculty_name,
f.faculty_id
from faculties as f 
inner join universities as u
on u.university_id = f.university_id
) as uf on uf.faculty_id = e.faculty_id
inner join users as us
on us.user_id = e.user_id
where e.exam_res != 'failed'
order by e.score desc
limit 10;`;

const POST = `
INSERT INTO 
exams (score, 
  user_id, 
  faculty_id, 
  s1_ans, 
  s2_ans, 
  exam_res) VALUES ($1, $2, $3, $4, $5, $6)
RETURNING *`;

export default {
  POST,
  GET,
};
