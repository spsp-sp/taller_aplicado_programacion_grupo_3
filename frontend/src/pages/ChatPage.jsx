import { useState, useRef } from 'react'
import { Send, Bot, User } from 'lucide-react'
import { chatService } from '@services/chatService'
import toast from 'react-hot-toast'

export default function ChatPage() {
  return (
    <div className="max-w-7xl mx-auto px-4 py-10">
      <h1 className="text-2xl font-bold text-gray-800 mb-2">Casero Bot</h1>
      <p className="text-gray-500">Próximamente: Chat </p>
    </div>
  )
}