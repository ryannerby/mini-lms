const BASE = import.meta.env.VITE_API_URL || "http://localhost:4000/api";

export async function getCourses() {
  const res = await fetch(`${BASE}/courses`);
  return res.json();
}

export async function getCourseProgress(courseId, userId = 1) {
  const res = await fetch(`${BASE}/courses/${courseId}/progress/${userId}`);
  return res.json();
}

export async function updateProgress({ userId = 1, moduleId, status }) {
  const res = await fetch(`${BASE}/progress`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ userId, moduleId, status })
  });
  return res.json();
}
