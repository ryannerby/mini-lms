import Database from "better-sqlite3";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const DB_DIR = path.join(__dirname, "..", "db");
const DB_PATH = path.join(DB_DIR, "db.sqlite");
const schemaPath = path.join(DB_DIR, "schema.sql");
const seedPath = path.join(DB_DIR, "seed.sql");

export function getDb() {
  if (!fs.existsSync(DB_DIR)) fs.mkdirSync(DB_DIR, { recursive: true });
    const db = new Database(DB_PATH);
    db.pragma("journal_mode = WAL");
    db.pragma("foreign_keys = ON");
    return db;
  
}

export function resetDb() {
  const db = getDb();
  const schema = fs.readFileSync(schemaPath, "utf8");
  const seed = fs.readFileSync(seedPath, "utf8");
  db.exec("begin");
  db.exec(schema);
  db.exec(seed);
  db.exec("commit");
  db.close();
  console.log("Database reset & seeded");
}