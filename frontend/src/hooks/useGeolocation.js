import { useState, useCallback } from 'react'

export default function useGeolocation() {
    const [position, setPosition] = useState(() => {
        const saved = localStorage.getItem('userLocation')
        return saved ? JSON.parse(saved) : null
    })
    const [error, setError] = useState(null)
    const [loading, setLoading] = useState(false)

    const getPosition = useCallback(() => {
        if (!navigator.geolocation) {
            setError('La geolocalización no está soportada por este navegador.')
            return
        }

        setLoading(true)
        setError(null)

        navigator.geolocation.getCurrentPosition(
            (pos) => {
                const newPos = {
                    lat: pos.coords.latitude,
                    lng: pos.coords.longitude,
                }
                setPosition(newPos)
                localStorage.setItem('userLocation', JSON.stringify(newPos))
                setLoading(false)
            },
            (err) => {
                setError(err.message)
                setLoading(false)
            },
            { enableHighAccuracy: true, timeout: 10000, maximumAge: 60000 }
        )
    }, [])

    return { position, error, loading, getPosition }
}