require("dotenv").config();
const { Pool } = require("pg");

const openDb = () => {
  const pool = new Pool({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
    ssl:{ rejectUnauthorized: false }// process.env.SSL
  });
  return pool;
};
const query = (sql, values = []) => {
  return new Promise(async (resolve, reject) => {
    try {
      const pool = openDb();
      const result =  pool.query(sql, values);
      resolve(result);
    } catch (error) {
      reject(error.message);
    }
  });
};
module.exports = { query };
