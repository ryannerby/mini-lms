import { useEffect, useState } from "react";
import { getCourseProgress, updateProgress } from "../api";
import ProgressBar from "../components/ProgressBar";

export default function CourseDetail({ course, onBack }) {
  const [data, setData] = useState(null);
  const [err, setErr] = useState("");

  async function refresh() {
    setErr("");
    try {
      const res = await getCourseProgress(course.id, 1);
      setData(res);
    } catch {
      setErr("Failed to load");
    }
  }

  useEffect(() => { refresh(); }, [course.id]);

  async function toggle(m) {
    const next = m.status === "completed" ? "in_progress" : "completed";
    await updateProgress({ moduleId: m.module_id, status: next });
    await refresh();
  }

  if (!data) return <p>Loading…</p>;

  return (
    <div>
      <button onClick={onBack}>← Back</button>
      <h2 style={{ marginTop: 12 }}>{course.title}</h2>
      <div style={{ margin: "10px 0" }}>
        <ProgressBar percent={data.percent} />
        <div style={{ fontSize: 12, color: "#6b7280", marginTop: 6 }}>{data.percent}% complete</div>
      </div>
      {err && <p style={{ color: "crimson" }}>{err}</p>}

      <div>
        {data.modules.map(m => (
          <label key={m.module_id} style={{ display: "flex", gap: 12, alignItems: "center", border: "1px solid #e5e7eb", borderRadius: 12, padding: 12, marginBottom: 8 }}>
            <input type="checkbox" checked={m.status === "completed"} onChange={() => toggle(m)} />
            <span style={{ fontWeight: 500 }}>{m.title}</span>
            <span style={{ marginLeft: "auto", fontSize: 12, color: "#6b7280" }}>{m.status}</span>
          </label>
        ))}
      </div>
    </div>
  );
}
