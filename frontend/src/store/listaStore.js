import { create } from 'zustand'
import { persist } from 'zustand/middleware'
import { listaService } from '@services/listaService'

const useListaStore = create(
    persist(
        (set, get) => ({
            listas: [],
            activeListaId: null,
            isLoading: false,

            // Sincronización con Backend
            fetchListas: async () => {
                set({ isLoading: true })
                try {
                    const { data } = await listaService.getAll()
                    if (data && data.length > 0) {
                        set({
                            listas: data,
                            activeListaId: get().activeListaId || data[0].id
                        })
                    } else {
                        // Si no hay listas, crear la primera
                        const { data: newList } = await listaService.create({ nombre: 'Mi Lista', items: [] })
                        set({ listas: [newList], activeListaId: newList.id })
                    }
                } catch (err) {
                    console.error('Error fetching listas:', err)
                } finally {
                    set({ isLoading: false })
                }
            },

            setActiveLista: (id) => set({ activeListaId: id }),

            addLista: async (nombre) => {
                try {
                    const { data } = await listaService.create({ nombre, items: [] })
                    set((state) => ({
                        listas: [data, ...state.listas],
                        activeListaId: data.id
                    }))
                    return data
                } catch (err) {
                    console.error('Error creating lista:', err)
                }
            },

            removeLista: async (id) => {
                try {
                    await listaService.delete(id)
                    const { listas, activeListaId } = get()
                    const newListas = listas.filter(l => l.id !== id)
                    set({
                        listas: newListas,
                        activeListaId: activeListaId === id ? (newListas[0]?.id || null) : activeListaId
                    })
                } catch (err) {
                    console.error('Error deleting lista:', err)
                }
            },

            renameLista: async (id, nuevoNombre) => {
                try {
                    await listaService.update(id, { nombre: nuevoNombre })
                    set((state) => ({
                        listas: state.listas.map(l => l.id === id ? { ...l, nombre: nuevoNombre } : l)
                    }))
                } catch (err) {
                    console.error('Error renaming lista:', err)
                }
            },

            // Acciones de Items
            addItem: async (item) => {
                const { activeListaId, listas } = get()
                const activeLista = listas.find(l => l.id === activeListaId)
                if (!activeLista) return

                const newItem = {
                    id: Date.now(),
                    nombre: item.nombre,
                    cantidad: Number(item.cantidad) || 1,
                    unidad: item.unidad || 'un',
                    precioPagado: 0,
                    completado: false
                }

                const updatedItems = [...activeLista.items, newItem]
                set({
                    listas: listas.map(l => l.id === activeListaId ? { ...l, items: updatedItems } : l)
                })

                try {
                    await listaService.update(activeListaId, { items: updatedItems })
                } catch (err) {
                    console.error('Error syncing item add:', err)
                }
            },

            updateItem: async (itemId, updates) => {
                const { activeListaId, listas } = get()
                const activeLista = listas.find(l => l.id === activeListaId)
                if (!activeLista) return

                const updatedItems = activeLista.items.map(i => i.id === itemId ? { ...i, ...updates } : i)
                set({
                    listas: listas.map(l => l.id === activeListaId ? { ...l, items: updatedItems } : l)
                })

                try {
                    await listaService.update(activeListaId, { items: updatedItems })
                } catch (err) {
                    console.error('Error syncing item update:', err)
                }
            },

            removeItem: async (itemId) => {
                const { activeListaId, listas } = get()
                const activeLista = listas.find(l => l.id === activeListaId)
                if (!activeLista) return

                const updatedItems = activeLista.items.filter(i => i.id !== itemId)
                set({
                    listas: listas.map(l => l.id === activeListaId ? { ...l, items: updatedItems } : l)
                })

                try {
                    await listaService.update(activeListaId, { items: updatedItems })
                } catch (err) {
                    console.error('Error syncing item remove:', err)
                }
            },

            toggleItem: async (itemId) => {
                const { activeListaId, listas } = get()
                const activeLista = listas.find(l => l.id === activeListaId)
                if (!activeLista) return

                const updatedItems = activeLista.items.map(i => i.id === itemId ? { ...i, completado: !i.completado } : i)
                set({
                    listas: listas.map(l => l.id === activeListaId ? { ...l, items: updatedItems } : l)
                })

                try {
                    await listaService.update(activeListaId, { items: updatedItems })
                } catch (err) {
                    console.error('Error syncing item toggle:', err)
                }
            },

            setPrecio: async (itemId, precio) => {
                const { activeListaId, listas } = get()
                const activeLista = listas.find(l => l.id === activeListaId)
                if (!activeLista) return

                const validPrecio = Math.max(0, Number(precio))
                const updatedItems = activeLista.items.map(i => i.id === itemId ? { ...i, precioPagado: validPrecio } : i)
                set({
                    listas: listas.map(l => l.id === activeListaId ? { ...l, items: updatedItems } : l)
                })

                try {
                    await listaService.update(activeListaId, { items: updatedItems })
                } catch (err) {
                    console.error('Error syncing price:', err)
                }
            },

            // Selectores
            getActiveLista: () => {
                const { listas, activeListaId } = get()
                return listas.find(l => l.id === activeListaId) || { nombre: 'Cargando...', items: [] }
            },

            getTotalGastado: () => {
                const activeLista = get().getActiveLista()
                return activeLista.items?.reduce((acc, item) => acc + (item.precioPagado || 0), 0) || 0
            }
        }),
        {
            name: 'conyapa-listas-v2',
            partialize: (state) => ({ activeListaId: state.activeListaId }),
        }
    )
)

export default useListaStore