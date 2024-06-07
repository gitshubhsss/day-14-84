const mysql = require("mysql2");
const { faker } = require("@faker-js/faker");
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "delta_app",
  password: "Mahi@7781",
});

let getRandomUser = () => {
  return [
    faker.string.uuid(),
    faker.internet.userName(),
    faker.internet.email(),
    faker.internet.password(),
  ];
};

let data = [];
for (i = 0; i < 50; i++) {
  data.push(getRandomUser());
}

let query = `INSERT INTO user (id,username,email,password) VALUES ? `;

try {
  connection.query(query, [data], (err, result) => {
    if (err) throw err;
    console.log(result);
    console.log(result.length);
  });
} catch (error) {
  console.log(error);
}
connection.end();

