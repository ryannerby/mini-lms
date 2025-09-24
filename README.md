# Mini LMS — Demo Project


## 🚀 Features
- View list of courses
- Open a course → see its modules
- Toggle module completion with checkboxes
- Progress bar updates and persists to database

---

## 🛠 Tech Stack
- **Frontend:** React + Vite
- **Backend:** Node.js + Express
- **Database:** SQLite (via better-sqlite3)

---

## 📂 Data Model
- **users**(id, name, email)
- **courses**(id, title, description)
- **modules**(id, course_id FK, title, order_index)
- **progress**(id, user_id FK, module_id FK, status ENUM, UNIQUE(user_id, module_id))

---

## 🔌 API Endpoints
- `GET /api/courses` → list courses
- `GET /api/courses/:id/modules` → list modules in a course
- `GET /api/courses/:id/progress/:userId` → progress info
- `POST /api/progress` → update module status

---

## 💻 Getting Started

### Backend
```bash
cd backend
npm install
npm run db:reset   # reset and seed the database
npm run dev        # start server at http://localhost:4000
```

### Frontend
```bash
cd frontend
npm install
npm run dev        # start frontend at http://localhost:5173
```

---

## 🎬 Demo Script
1. Open Courses page → see list of seeded courses.
2. Open a course → view its modules.
3. Toggle completion → progress bar updates instantly.
4. Refresh page → progress persists from DB.

---

## 🙅‍♂️ Non-Goals
- No authentication
- No instructor/admin features
- No quizzes or uploads

---

## 📌 Notes
This is a **demo project** designed for interview purposes, not production use.
