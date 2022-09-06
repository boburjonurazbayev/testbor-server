const SUB1 = `
SELECT subject_1 FROM subjects 
`;

const SUB2 = `
SELECT subject_2 FROM subjects WHERE subject_1 = $1
`;

const POST = `SELECT * FROM subjects WHERE subject_1 = $1 and subject_2 = $2`;

export { SUB1, SUB2, POST };
