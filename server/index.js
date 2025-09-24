import express from "express";
import cors from "cors";
import { getDb, resetDb} from "./lib/db.js";
import coursesRouter from "./routes/courses.js";
import progressRouter from "./routes/progress.js";

const app = express();
app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.json({ 
    message: "Mini LMS Backend API", 
    endpoints: [
      "GET /api/courses",
      "GET /api/courses/:id/modules", 
      "GET /api/courses/:id/progress/:userId",
      "POST /api/progress"
    ]
  });
});

app.use("/api", coursesRouter);
app.use("/api", progressRouter);

const port = process.env.PORT || 4000;

if (process.argv.includes("--reset-db")) {
  resetDb();
  console.log("Database reset & seeded");
  process.exit(0);
}

app.listen(port, () => {
  console.log(`Backend listening on http://localhost:${port}`);
});