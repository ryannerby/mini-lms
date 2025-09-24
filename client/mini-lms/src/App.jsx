import { useState } from "react";
import Courses from "./pages/Courses";
import CourseDetail from "./pages/CourseDetail";

export default function App() {
  const [selected, setSelected] = useState(null);
  return (
    <div style={{ maxWidth: 760, margin: "0 auto", padding: 24 }}>
      {!selected ? <Courses onSelect={setSelected} /> : <CourseDetail course={selected} onBack={() => setSelected(null)} />}
    </div>
  );
}
