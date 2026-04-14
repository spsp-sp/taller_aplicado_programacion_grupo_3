import { create } from 'zustand'
import { persist } from 'zustand/middleware'

const useAuthStore = create(
  persist(
    (set) => ({
      user: null,
      token: null,

      setAuth: (user, token) => set({ user, token }),

      logout: () => set({ user: null, token: null }),

      updateUser: (data) =>
        set((state) => ({ user: { ...state.user, ...data } })),
    }),
    {
      name: 'conyapa-auth', // key in localStorage
    }
  )
)

export default useAuthStore
