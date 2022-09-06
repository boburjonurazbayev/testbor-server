---------------------------------Users data

INSERT INTO 
users 
    (fullname, gender, contact, username, password) 
VALUES 
    ('Urazbayev Bobur', 'male', '998998455076', 'Bobur', crypt('1111', gen_salt('bf'))) RETURNING *;


    ---------------------------------Subjects data

INSERT INTO 
subjects 
    (subject_1, subject_2) 
VALUES 
    ('math', 'english'), ('math', 'physics'), ('chemistry', 'biology') RETURNING *;



    ---------------------------------Universities data

INSERT INTO 
universities 
    (university_name) 
VALUES 
    ('Toshkent Tibbiyot Akademiyasi'), 
    ('Toshkent Pediatriya Tibbiyot Instituti'), 
    ('Qoraqalpog`iston Tibbiyot Instituti'), 
    ('Toshkent Davlat Stomotologiya Instituti'), 
    ('Toshkent Farmatsevtika Instituti'),
    ('Toshkent Axborot Texnologiyalari Universiteti'), 
    ('Urganch Davlat Universiteti'), 
    ('Toshkent Moliya Instituti'), 
    ('Toshkent Davlat Iqtisodiyot Universiteti'), 
    ('O`zbekiston Milliy Universiteti') RETURNING *;

  ---------------------------------Faculties data

INSERT INTO 
faculties 
    (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject_id
    ) 
VALUES 
      ('Korporativ boshqaruv', 171.2, 146.0, 4, 11, 9, 1), 
    ('Buxgalteriya hisobi va audit (tarmoqlar bo``yicha)', 180.6, 146.0, 5, 45, 9, 1), 
    ('Marketing (tarmoqlar va sohalar bo``yicha) ', 174.3, 126.0, 3, 32, 9, 1), 
    ('Iqtisodiy xavfsizlik', 171.2, 149.5, 4, 11, 9, 1), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 183.8, 156.5, 5, 70, 9, 1)
    RETURNING *;

 ('Tibbiy-biologik ish', 155.4, 128.1, 4, 55, 1, 3), 
    ('Xalq tabobati', 134.4, 126.0, 10, 15, 1, 3), 
    ('Biotibbiyot muhandisligi', 132.3, 126.0, 10, 15, 1, 3), 
    ('Davolash ishi', 177.5, 156.5, 30, 300, 1, 3)

  ('Tibbiy-biologik ish', 152.8, 129.2, 3, 34, 2, 3), 
    ('Xalq tabobati', 132.3, 122.9, 10, 15, 2, 3), 
    ('Pediatriya ishi', 162.8, 140.7, 25, 175, 2, 3), 
    ('Davolash ishi', 162.8, 144.9, 10, 75, 2, 3)

('Stomatologiya (yo``nalishlar bo``yicha)', 148.1, 139.7, 5, 5, 3, 3), 
    ('Farmatsiya (turlari bo``yicha)', 137.6, 130.2, 5, 5, 3, 3), 
    ('Pediatriya ishi', 139.7, 130.2, 5, 22, 3, 3), 
    ('Davolash ishi', 153.3, 136.5, 8, 22, 3, 3)

('Stomatologiya (yo``nalishlar bo``yicha)', 170.1, 154.4, 55, 72, 4, 3),
  ('Xalq tabobati', 140.7, 129.2, 10, 15, 4, 3)

    ('Biotexnologiya (farmatsevtik biotexnologiya)', 134.4, 126.0, 10, 15, 5, 3), 
    ('Farmatsiya (turlari bo``yicha)', 143.9, 112.4, 70, 130, 5, 3), 
    ('Sanoat farmatsiyasi (turlari bo``yicha)', 141.8, 122.9, 30, 120, 5, 3)

    ('Kiberxavfsizlik injiniringi', 160.7, 144.9, 14, 20, 6, 2), 
    ('Kompyuter injiniringi: AT-Servis', 160.7, 112.4, 20, 75, 6, 2), 
    ('Kompyuter injiniringi: “Kompyuter injiniringi”', 160.7, 113.4, 30, 75, 6, 2), 
    ('Dasturiy injiniring', 168.0, 123.9, 35, 100, 6, 2), 
    ('Sun``iy intellekt)', 160.6, 119.7, 7, 23, 6, 2)

    ('Fizika', 130.2, 79.8, 20, 60, 7, 2), 
    ('Matematika', 142.8, 101.9, 35, 45, 7, 2), 
    ('Biologiya (turlari bo``yicha)', 120.8, 104.0, 25, 55, 7, 3), 
    ('Kimyo (turlari bo``yicha)', 106.1, 74.6, 25, 55, 7, 3), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 172.2, 135.5, 5, 45, 7, 1)

        ('Fizika', 156.5, 92.4, 50, 140, 10, 2), 
    ('Matematika', 167.0, 131.3, 40, 60, 10, 2), 
    ('Neft va gaz kimyosi', 107.1, 70.4, 20, 55, 10, 2), 
    ('Kimyo (turlari bo``yicha)', 131.3, 78.8, 43, 132, 10, 3), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 177.5, 146.0, 3, 27, 10, 1)

 ('Budjet nazorati va g''aznachiligi', 173.3, 121.8, 3, 47, 8, 1), 
    ('Buxgalteriya hisobi va audit (tarmoqlar bo``yicha)', 180.6, 151.2, 3, 47, 8, 1), 
    ('Elektron tijorat ', 164.9, 106.1, 5, 20, 8, 1), 
    ('Bank ishi va auditi', 182.7, 148.1, 3, 47, 8, 1), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 182.7, 158.6, 3, 10, 8, 1)

 ('Korporativ boshqaruv', 171.2, 146.0, 4, 11, 9, 1), 
    ('Buxgalteriya hisobi va audit (tarmoqlar bo``yicha)', 180.6, 146.0, 5, 45, 9, 1), 
    ('Marketing (tarmoqlar va sohalar bo``yicha) ', 174.3, 126.0, 3, 32, 9, 1), 
    ('Iqtisodiy xavfsizlik', 171.2, 149.5, 4, 11, 9, 1), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 183.8, 156.5, 5, 70, 9, 1)

--      university_id |                university_name
-- ---------------+-----------------------------------------------
--              1 | Toshkent Tibbiyot Akademiyasi
--              2 | Toshkent Pediatriya Tibbiyot Instituti
--              3 | Qoraqalpog`iston Tibbiyot Instituti
--              4 | Toshkent Davlat Stomotologiya Instituti
--              5 | Toshkent Farmatsevtika Instituti
--              6 | Toshkent Axborot Texnologiyalari Universiteti
--              7 | Urganch Davlat Universiteti
--              8 | Toshkent Moliya Instituti
--              9 | Toshkent Davlat Iqtisodiyot Universiteti
--             10 | O`zbekiston Milliy Universiteti


    ---------------------------------Questions data

INSERT INTO 
questions 
    (question_text, subject_name) 
VALUES 
    ('2+2', 'math'), 
    ('I ... school, because i have many friends there', 'english')
    RETURNING *;

--      question_id | question_text | subject_name
-- -------------+---------------+--------------
--            1 | 2+2           | math
--            2 | 4+4           | math
--            3 | 5+5           | math


    ---------------------------------Answers false data 

INSERT INTO 
answers 
    (answer_text, question_id) 
VALUES 
    ('8', 3), 
    ('6', 3), 
    ('0', 3) 
    RETURNING *;

      ---------------------------------Answers true data 

INSERT INTO 
answers 
    (answer_text, question_id, answer_boolean) 
VALUES 
    ('4', 3, 't')
    RETURNING *;


INSERT INTO 
answers 
    (answer_text, question_id) 
VALUES 
    ('don`t like', 4), 
    ('likes', 4), 
    ('doesn`t like', 4) 
    RETURNING *;

      ---------------------------------Answers true data 

INSERT INTO 
answers 
    (answer_text, question_id, answer_boolean) 
VALUES 
    ('like', 4, 't')
    RETURNING *;



select
    f.faculty_name,
    s.subject_1,
    s.subject_2,
    json_agg((qa.*))
 from faculties as f
 inner join (
    select
        q.question_id,
        q.question_text,
        q.subject_name,
        json_agg((
            a.answer_id,
            a.answer_text,
            a.answer_boolean,
            a.answer_id
        )) as question_answers
    from questions as q
    inner join answers as a
    on a.question_id = q.question_id
    GROUP BY q.question_id
 ) as qa on qa.subject_name = s.subject_1
 inner join subjects as s 
 on s.subject_id = f.subject_id
 GROUP BY f.faculty_id;
--   json_agg((
--     q.question_id,
--     q.question_text
--    ))