# ConYapa 🛒🗺️
> Plataforma web para descubrir ferias libres y feriantes locales — Proyecto académico DUOC UC

---

## 🏗️ Estructura del Proyecto

```
taller_aplicado_programacion_grupo_3/
├── frontend/                  # React + Vite + TailwindCSS
│   ├── src/
│   │   ├── components/
│   │   │   ├── auth/          # PrivateRoute, RoleRoute
│   │   │   ├── common/        # Navbar, Footer
│   │   │   └── layout/        # MainLayout, AuthLayout
│   │   ├── hooks/             # useAuth, useFerias, useGeolocation
│   │   ├── pages/
│   │   │   ├── auth/          # LoginPage, RegisterPage
│   │   │   └── admin/         # DashboardPage
│   │   ├── services/          # api.js, authService, feriaService, chatService
│   │   ├── store/             # authStore (Zustand)
│   │   └── utils/
│   ├── index.html
│   ├── vite.config.js
│   └── tailwind.config.js
│
└── backend/                   # Node.js + Express + Sequelize
    ├── src/
    │   ├── controllers/       # auth, feria, resena, ia
    │   ├── middleware/        # auth (JWT), errorHandler, validate
    │   ├── models/            # Usuario, Feria, Feriante, Resena, Horario, ListaCompras
    │   ├── routes/            # auth, feria, feriante, resena, lista, ia
    │   ├── database/          # connection.js
    │   ├── app.js
    │   └── server.js
    └── tests/
        └── integration/       # auth.test.js
```

---

## 🚀 Inicio Rápido

### Requisitos previos
- Node.js 18+
- PostgreSQL 14+

### 1. Clonar y configurar variables de entorno

```bash
# Backend
cp backend/.env.example backend/.env

# Frontend
cp frontend/.env.example frontend/.env
```

### 2. Instalar dependencias

```bash
# Backend
cd backend && npm install

# Frontend
cd ../frontend && npm install
```

### 3. Crear la base de datos

```sql
CREATE DATABASE conyapa_db;
```

### 4. Ejecutar en desarrollo

```bash
# Terminal 1 — Backend (puerto 3001)
cd backend && npm run dev

# Terminal 2 — Frontend (puerto 5173)
cd frontend && npm run dev
```

La app estará disponible en **http://localhost:5173**

---

## 🌿 Ramas de desarrollo

| Rama | Módulo |
|------|--------|
| `main` | Producción estable |
| `feature/mapa` | Mapa interactivo Leaflet |
| `feature/resenas` | Sistema de reseñas |
| `feature/feriantes` | Directorio de feriantes |
| `feature/ia` | Asistente conversacional |
| `feature/auth` | Autenticación y roles |
| `feature/lista-compras` | Lista de compras con IA |

---

## 📡 API Endpoints

| Método | Ruta | Auth | Descripción |
|--------|------|------|-------------|
| POST | `/api/auth/register` | ❌ | Registro de usuario |
| POST | `/api/auth/login` | ❌ | Login |
| GET  | `/api/auth/me` | ✅ | Perfil del usuario |
| GET  | `/api/ferias` | ❌ | Listar ferias |
| GET  | `/api/ferias/nearby` | ❌ | Ferias cercanas |
| GET  | `/api/ferias/:id` | ❌ | Detalle de feria |
| POST | `/api/ferias` | 🔐 Admin | Crear feria |
| GET  | `/api/resenas/feria/:id` | ❌ | Reseñas de una feria |
| POST | `/api/resenas` | ✅ | Crear reseña |
| POST | `/api/ia/chat` | ✅ | Chat con asistente IA |
| POST | `/api/ia/recomendaciones` | ✅ | Recomendaciones personalizadas |

---

## 🧪 Tests

```bash
cd backend && npm test
```

---

## 👥 Equipo — Grupo 3
- Taller Aplicado de Programación — DUOC UC
