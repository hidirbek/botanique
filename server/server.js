const http = require("http");
const { Pool } = require("pg");

// create a new Pool instance with your database connection details
const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "botanique",
  password: "1",
  port: 5432,
});

async function getDataFromDB() {
  const client = await pool.connect();

  try {
    // execute a SELECT statement to retrieve data from your database
    const result = await client.query(
      "SELECT tool_img, tool_title, tool_status, tool_notification FROM tools"
    );

    // console.log(result);
    return result.rows;
  } finally {
    client.release();
  }
}

// create an HTTP server instance
const server = http.createServer(async (req, res) => {
  res.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:5501");
  res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type");
  if (req.url === "/data") {
    try {
      const data = await getDataFromDB();

      // send the data as a JSON response
      res.writeHead(200, { "Content-Type": "application/json" });
      res.end(JSON.stringify(data));
    } catch (error) {
      console.error(error);
      res.writeHead(500, { "Content-Type": "text/plain" });
      res.end("An error occurred");
    }
  } else {
    res.writeHead(404, { "Content-Type": "text/plain" });
    res.end("Not found");
  }
});

// start the server listening on a port
server.listen(3030, () => {
  console.log("Server listening on port 3030");
});
