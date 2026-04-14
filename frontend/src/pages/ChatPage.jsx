import { useState, useRef } from 'react'
import { Send, Bot, User } from 'lucide-react'
import { chatService } from '@services/chatService'
import toast from 'react-hot-toast'

export default function ChatPage() {
  const [messages, setMessages] = useState([
    { role: 'assistant', content: '¡Hola! Soy tu asistente de ConYapa 🛒 ¿En qué te puedo ayudar hoy?' },
  ])
  const [input, setInput] = useState('')
  const [loading, setLoading] = useState(false)
  const bottomRef = useRef(null)

  const sendMessage = async () => {
    if (!input.trim()) return
    const userMsg = { role: 'user', content: input }
    const newHistory = [...messages, userMsg]
    setMessages(newHistory)
    setInput('')
    setLoading(true)

    try {
      const { data } = await chatService.sendMessage(input, newHistory)
      setMessages([...newHistory, { role: 'assistant', content: data.reply }])
    } catch {
      toast.error('Error al conectar con el asistente.')
    } finally {
      setLoading(false)
      bottomRef.current?.scrollIntoView({ behavior: 'smooth' })
    }
  }

  return (
    <div className="max-w-3xl mx-auto px-4 py-8 flex flex-col h-[calc(100vh-4rem)]">
      <h1 className="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
        <Bot className="text-primary-600" /> Asistente ConYapa
      </h1>

      <div className="flex-1 overflow-y-auto bg-white rounded-xl border border-gray-100 shadow-sm p-4 flex flex-col gap-3">
        {messages.map((msg, i) => (
          <div key={i} className={`flex gap-2 ${msg.role === 'user' ? 'justify-end' : 'justify-start'}`}>
            {msg.role === 'assistant' && (
              <div className="w-8 h-8 rounded-full bg-primary-100 flex items-center justify-center shrink-0">
                <Bot size={16} className="text-primary-700" />
              </div>
            )}
            <div
              className={`max-w-[75%] rounded-2xl px-4 py-2 text-sm ${
                msg.role === 'user'
                  ? 'bg-primary-600 text-white rounded-tr-none'
                  : 'bg-gray-100 text-gray-800 rounded-tl-none'
              }`}
            >
              {msg.content}
            </div>
            {msg.role === 'user' && (
              <div className="w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center shrink-0">
                <User size={16} className="text-gray-500" />
              </div>
            )}
          </div>
        ))}
        {loading && (
          <div className="flex gap-2 justify-start">
            <div className="w-8 h-8 rounded-full bg-primary-100 flex items-center justify-center">
              <Bot size={16} className="text-primary-700" />
            </div>
            <div className="bg-gray-100 rounded-2xl rounded-tl-none px-4 py-2 text-sm text-gray-500 animate-pulse">
              Escribiendo...
            </div>
          </div>
        )}
        <div ref={bottomRef} />
      </div>

      <div className="mt-3 flex gap-2">
        <input
          type="text"
          value={input}
          onChange={(e) => setInput(e.target.value)}
          onKeyDown={(e) => e.key === 'Enter' && !loading && sendMessage()}
          placeholder="Escribe tu pregunta..."
          className="input-field"
        />
        <button
          onClick={sendMessage}
          disabled={loading || !input.trim()}
          className="btn-primary px-4"
        >
          <Send size={16} />
        </button>
      </div>
    </div>
  )
}
