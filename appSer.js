 // this is Simple page For that I did not use any Route
//  this Project Write d by Manual method
const express = require("express");
const path = require("path");
const multer = require("multer");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const {v4:uuid} = require("uuid")
// PORT
const PORT = 3300;
const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
// Connect With Data Base MYSQL
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "Gym",
});
connection.connect((err) => {
  if (err) {
    console.log("❌ Fault in connect data ");
  } else {
    console.log("✅connecting is successfully");
  }
});
// main page
const FileMain = path.join(__dirname, "./mysql.ejs");
app.get("/", (req, res) => {
    const sql = "SELECT * FROM Management";
    connection.query(sql, (err, result) => {
      if (err) {
        console.error("Error fetching Management:", err);
        return res.status(500).send("Failed to fetch Management");
      }
      res.render(FileMain, { result }); // pass result to EJS
    });
  });
// POST
app.post("/add-Members", (req, res) => {
    const id = uuid(); // generates a unique ID like 'b7a9f18e-0341-4db3-99f1-7fdd0d80e7f1'
  let { name,Payment, status, classes, personal } = req.body;
    // switch status
    switch (status) {
        case "active":
            status = true;
          break;
        case "expired":
            status = false;
          break;
        default:
            status = true;
      }
  // switch personal
  switch (personal) {
    case "personal-choose1":
      personal = "One-on-One Personal Training";
      break;
    case "personal-choose2":
      personal = "Small Group Personal Training";
      break;
    case "personal-choose3":
      personal = "Online Personal Training";
      break;
    default:
      personal = "Unknown"; 
  }
  // sql
  const sql =
    "INSERT INTO Management (id,name,Payment,status,classes,type) VALUES (?,?,?,?,?,?)";
  connection.query(sql, [id,name,Payment,status,classes,personal], (err, result) => {
    if (err) {
      console.log("Fault in Post Data", err.message);
      res.status(500).json("Fault in Post Data");
    }
    res.redirect("/")
  });  
});
// DELETE 
app.post("/Delete/:id", (req, res) => {
    const id = req.params.id
    const sql = "DELETE FROM Management WHERE id = ?";
    connection.query(sql,[id], (err) => {
      if (err) {
        console.error("Error Delete Management:", err);
        return res.status(500).send("Failed to Delete Management");
      }
      res.redirect("/")
    });
  });
  // Put 
  app.put("/update/:id", (req, res) => {
    const id = req.params.id
    let { name,Payment, status, classes, personal } = req.body;
        // switch status
        switch (status) {
            case "active":
                status = true;
              break;
            case "expired":
                status = false;
              break;
            default:
                status = true;
          }
      // switch personal
      switch (personal) {
        case "personal-choose1":
          personal = "One-on-One Personal Training";
          break;
        case "personal-choose2":
          personal = "Small Group Personal Training";
          break;
        case "personal-choose3":
          personal = "Online Personal Training";
          break;
        default:
          personal = "Unknown"; 
      }
    const sql = "UPDATE Management SET name = ?, Payment = ?, status = ? , classes = ? , type = ? WHERE id = ?";
    const value = [name,Payment,status,classes,personal,id]
    connection.query(sql,value, (err) => {
      if (err) {
        console.error("Error update Management:", err);
        return res.status(500).send("Failed to update Management");
      }
      res.json({ success: true, message: "Updated successfully" });
    });
  });

app.listen(PORT, () => {
  console.log(`The Server is Run On ${PORT}`);
});
