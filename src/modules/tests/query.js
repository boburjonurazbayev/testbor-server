const GET1 = `SELECT
  q.question_id,
  q.question_text,
  q.subject_name,
  json_agg((
    a.answer_id,
  a.answer_text,
  a.answer_boolean
  )) AS answer_all
  FROM questions AS q
  INNER JOIN  answers AS a  on  q.question_id = a.question_id
  WHERE q.subject_name = $1
  GROUP  BY q.question_id`;

const GET2 = `SELECT
  q.question_id,
  q.question_text,
  q.subject_name,
  json_agg((
    a.answer_id,
  a.answer_text,
  a.answer_boolean
  )) AS answer_all
  FROM questions AS q
  INNER JOIN  answers AS a  on  q.question_id = a.question_id
  WHERE q.subject_name = $1
  GROUP  BY q.question_id`;

export default {
  GET1,
  GET2,
};
