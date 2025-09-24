import { useEffect, useState } from "react";
import { getCourses } from "../api";

export default function Courses({ onSelect }) {
  const [courses, setCourses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [err, setErr] = useState("");

  useEffect(() => {
    getCourses().then(setCourses).catch(() => setErr("Failed to load")).finally(() => setLoading(false));
  }, []);

  if (loading) return <p>Loading…</p>;
  if (err) return <p style={{ color: "crimson" }}>{err}</p>;
  if (!courses.length) return <p>No courses yet.</p>;

  return (
    <div>
      <h1>Courses</h1>
      {courses.map(c => (
        <div key={c.id} style={{ border: "1px solid #e5e7eb", borderRadius: 12, padding: 16, marginBottom: 12 }}>
          <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
            <div>
              <div style={{ fontWeight: 600 }}>{c.title}</div>
              <div style={{ color: "#6b7280" }}>{c.description || ""}</div>
              <div style={{ marginTop: 6, fontSize: 13, color: "#6b7280" }}>{c.module_count} modules</div>
            </div>
            <button onClick={() => onSelect(c)} style={{ padding: "8px 12px" }}>Open</button>
          </div>
        </div>
      ))}
    </div>
  );
}
