import { Router } from "express";
import { getDb } from "../lib/db.js";

const router = Router();

router.get("/courses", (req, res) => {
  const db = getDb();
  const rows = db.prepare(`
    SELECT c.id, c.title, c.description, COUNT(m.id) AS module_count
    FROM courses c
    LEFT JOIN modules m ON m.course_id = c.id
    GROUP BY c.id
    ORDER BY c.id ASC
  `).all();
  res.json(rows);
});

router.get("/courses/:id/modules", (req, res) => {
  const db = getDb();
  const modules = db.prepare(`
    SELECT id, course_id, title, order_index, type
    FROM modules
    WHERE course_id = ?
    ORDER BY order_index ASC
  `).all(req.params.id);
  if (!modules.length) return res.status(404).json({ error: "Not Found" });
  res.json(modules);
});

router.get("/courses/:id/progress/:userId", (req, res) => {
  const db = getDb();
  const { id, userId } = req.params;
  const rows = db.prepare(`
    SELECT m.id AS module_id, m.title, COALESCE(p.status,'not_started') AS status, p.score
    FROM modules m
    LEFT JOIN progress p ON p.module_id = m.id AND p.user_id = ?
    WHERE m.course_id = ?
    ORDER BY m.order_index ASC
  `).all(userId, id);

  if (!rows.length) return res.status(404).json({ error: "Not Found" });

  const completed = rows.filter(r => r.status === "completed").length;
  const total = rows.length || 1;
  const percent = Math.round((completed / total) * 100);

  res.json({ percent, modules: rows });
});

export default router;