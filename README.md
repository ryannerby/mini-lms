# Mini LMS

A mini Learning Management System built with React frontend and Node.js backend.

## Features

- Course listing and management
- Module viewing with progress tracking
- User progress tracking across courses
- RESTful API with SQLite database

## Tech Stack

**Frontend:**
- React 18
- Vite
- Modern CSS

**Backend:**
- Node.js
- Express.js
- SQLite with better-sqlite3
- RESTful API

## Setup

### Backend Setup

```bash
cd server
npm install
npm run db:reset  # Initialize database with seed data
npm run dev       # Start development server
```

Backend runs on `http://localhost:4000`

### Frontend Setup

```bash
cd client/mini-lms
npm install
npm run dev       # Start development server
```

Frontend runs on `http://localhost:5173`

## API Endpoints

- `GET /api/courses` - Get all courses
- `GET /api/courses/:id/modules` - Get modules for a course
- `GET /api/courses/:id/progress/:userId` - Get user progress for a course
- `POST /api/progress` - Update user progress

## Database Schema

- **users**: User information
- **courses**: Course details
- **modules**: Course modules/lessons
- **progress**: User progress tracking
