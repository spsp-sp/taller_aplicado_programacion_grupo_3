import { useEffect } from 'react';
import { useLocation } from 'react-router-dom';

export default function ScrollToTop() {
    const { pathname } = useLocation();

    useEffect(() => {
        // Forzar el scroll al inicio de la página
        window.scrollTo(0, 0);
    }, [pathname]);

    return null;
}