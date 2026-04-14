import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom'
import { Toaster } from 'react-hot-toast'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'

// Layouts
import MainLayout from '@components/layout/MainLayout'
import AuthLayout from '@components/layout/AuthLayout'

// Pages
import HomePage from '@pages/HomePage'
import MapPage from '@pages/MapPage'
import FeriasPage from '@pages/FeriasPage'
import FeriaDetailPage from '@pages/FeriaDetailPage'
import FeriantesPage from '@pages/FeriantesPage'
import ChatPage from '@pages/ChatPage'
import LoginPage from '@pages/auth/LoginPage'
import RegisterPage from '@pages/auth/RegisterPage'
import ProfilePage from '@pages/ProfilePage'
import ListaComprasPage from '@pages/ListaComprasPage'
import DashboardPage from '@pages/admin/DashboardPage'
import NotFoundPage from '@pages/NotFoundPage'

// Guards
import PrivateRoute from '@components/auth/PrivateRoute'
import RoleRoute from '@components/auth/RoleRoute'

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      retry: 1,
      staleTime: 1000 * 60 * 5, // 5 minutes
    },
  },
})

export default function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <BrowserRouter>
        <Toaster position="top-right" />
        <Routes>
          {/* Public routes with main layout */}
          <Route element={<MainLayout />}>
            <Route path="/" element={<HomePage />} />
            <Route path="/mapa" element={<MapPage />} />
            <Route path="/ferias" element={<FeriasPage />} />
            <Route path="/ferias/:id" element={<FeriaDetailPage />} />
            <Route path="/feriantes" element={<FeriantesPage />} />

            {/* Protected routes */}
            <Route element={<PrivateRoute />}>
              <Route path="/chat" element={<ChatPage />} />
              <Route path="/perfil" element={<ProfilePage />} />
              <Route path="/lista-compras" element={<ListaComprasPage />} />
            </Route>

            {/* Admin routes */}
            <Route element={<RoleRoute allowedRoles={['admin']} />}>
              <Route path="/admin" element={<DashboardPage />} />
            </Route>
          </Route>

          {/* Auth routes with separate layout */}
          <Route element={<AuthLayout />}>
            <Route path="/login" element={<LoginPage />} />
            <Route path="/registro" element={<RegisterPage />} />
          </Route>

          {/* 404 */}
          <Route path="*" element={<NotFoundPage />} />
        </Routes>
      </BrowserRouter>
    </QueryClientProvider>
  )
}
