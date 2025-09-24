export default function ProgressBar({ percent }) {
  return (
    <div style={{ border: "1px solid #e5e7eb", borderRadius: 10, overflow: "hidden", height: 12 }}>
      <div style={{ width: `${percent}%`, height: "100%", background: "#22c55e" }} />
    </div>
  );
}
