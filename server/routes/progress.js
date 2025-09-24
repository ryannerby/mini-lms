import { Router } from "express";
import { getDb } from "../lib/db.js";
const router = Router();

const VALID = new Set(["not_started","in_progress","completed"]);

router.post("/progress", (req, res) => {
  const { userId, moduleId, status } = req.body || {};
  if (!Number.isInteger(userId) || !Number.isInteger(moduleId) || !VALID.has(status)) {
    return res.status(400).json({ error: "Invalid body" });
  }
  const db = getDb();
  const stmt = db.prepare(`
    INSERT INTO progress (user_id, module_id, status, last_viewed_at)
    VALUES (?, ?, ?, datetime('now'))
    ON CONFLICT(user_id, module_id) DO UPDATE SET status=excluded.status, last_viewed_at=datetime('now')
  `);
  stmt.run(userId, moduleId, status);
  res.json({ ok: true });
});

export default router;
