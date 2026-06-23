import React from 'react'
import { X, AlertTriangle } from 'lucide-react'

export default function ConfirmModal({
                                         isOpen,
                                         onClose,
                                         onConfirm,
                                         title,
                                         message,
                                         confirmText = 'ELIMINAR',
                                         cancelText = 'CANCELAR',
                                         variant = 'danger'
                                     }) {
    if (!isOpen) return null

    const variantClasses = {
        danger: {
            icon: <AlertTriangle size={40} className="text-red-500" />,
            iconBg: 'bg-red-50',
            confirmBtn: 'bg-red-500 hover:bg-red-600 shadow-red-100',
        },
        warning: {
            icon: <AlertTriangle size={40} className="text-amber-500" />,
            iconBg: 'bg-amber-50',
            confirmBtn: 'bg-amber-500 hover:bg-amber-600 shadow-amber-100',
        }
    }

    const currentVariant = variantClasses[variant] || variantClasses.danger

    return (
        <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 bg-black/40 backdrop-blur-sm animate-in fade-in duration-200">
            <div className="bg-white w-full max-w-md rounded-[2.5rem] p-8 shadow-2xl animate-in zoom-in-95 duration-200">
                <div className="flex flex-col items-center text-center">
                    <div className={`w-20 h-20 ${currentVariant.iconBg} rounded-full flex items-center justify-center mb-6`}>
                        {currentVariant.icon}
                    </div>
                    <h2 className="text-2xl font-black text-gray-800 mb-2">{title}</h2>
                    <div className="text-gray-400 font-medium mb-8">
                        {message}
                    </div>
                    <div className="flex w-full gap-3">
                        <button
                            onClick={onClose}
                            className="flex-1 py-4 bg-gray-50 text-gray-500 rounded-2xl font-black hover:bg-gray-100 transition-all"
                        >
                            {cancelText}
                        </button>
                        <button
                            onClick={onConfirm}
                            className={`flex-1 py-4 text-white rounded-2xl font-black shadow-lg transition-all active:scale-95 ${currentVariant.confirmBtn}`}
                        >
                            {confirmText}
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}