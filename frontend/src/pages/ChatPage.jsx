import { useState, useRef, useEffect } from 'react'
import { Send, Bot, User, Sparkles, AlertCircle, RefreshCw } from 'lucide-react'
import { chatService } from '@services/chatService'
import toast from 'react-hot-toast'

export default function ChatPage() {
  const [messages, setMessages] = useState([
    {
      sender: 'bot',
      text: '¡Hola casero! ¿Cómo está? Soy el **Casero Bot** 🥕 de ConYapa. Estoy aquí para recomendarle las mejores ferias de Santiago, ver qué días atienden, si aceptan tarjeta, o cuáles tienen las mejores ofertas. ¿Qué anda buscando hoy?',
      time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })
    }
  ])
  const [input, setInput] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const messagesEndRef = useRef(null)

  const suggestionChips = [
    "Recomiéndame una feria para el fin de semana",
    "¿Qué feria acepta tarjeta en Providencia?",
    "¿Cuáles son las ferias más baratas?",
    "Busco ferias con buenas calificaciones"
  ]

  const scrollToBottom = () => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' })
  }

  useEffect(() => {
    scrollToBottom()
  }, [messages, isLoading])

  const getUserCoordinates = () => {
    try {
      const saved = localStorage.getItem('userLocation')
      if (saved) {
        const parsed = JSON.parse(saved)
        if (parsed.lat && parsed.lng) {
          return { lat: parsed.lat, lng: parsed.lng }
        }
      }
    } catch (e) {
      console.error(e)
    }
    return { lat: -33.4489, lng: -70.6693 } // Santiago por defecto
  }

  const handleSend = async (textToSend) => {
    const text = textToSend || input
    if (!text.trim()) return

    const userMessage = {
      sender: 'user',
      text: text,
      time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })
    }

    setMessages((prev) => [...prev, userMessage])
    if (!textToSend) setInput('')
    setIsLoading(true)

    try {
      // Formatear el historial para el backend (excluir el mensaje de saludo inicial si se prefiere, o enviarlo todo)
      const history = messages.map(msg => ({
        sender: msg.sender,
        text: msg.text
      }))

      const coords = getUserCoordinates()
      const response = await chatService.sendMessage(text, history, coords.lat, coords.lng)
      
      const botMessage = {
        sender: 'bot',
        text: response.data.response,
        time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })
      }
      setMessages((prev) => [...prev, botMessage])
    } catch (error) {
      console.error(error)
      toast.error('Lo siento, tuvimos un problema de comunicación con el Casero Bot. Intente nuevamente.')
    } finally {
      setIsLoading(false)
    }
  }

  const renderMessageText = (text) => {
    return text.split('\n').map((line, i) => {
      let content = line
      const isBullet = line.trim().startsWith('- ') || line.trim().startsWith('* ')
      if (isBullet) {
        content = line.trim().replace(/^[-*]\s+/, '')
      }

      // Parse bold: **text**
      const parts = content.split(/(\*\*.*?\*\*)/g)
      const renderedParts = parts.map((part, index) => {
        if (part.startsWith('**') && part.endsWith('**')) {
          return (
            <strong key={index} className="font-bold text-emerald-800 bg-emerald-50 px-1 rounded">
              {part.slice(2, -2)}
            </strong>
          )
        }
        return part
      })

      if (isBullet) {
        return (
          <li key={i} className="ml-5 list-disc my-1.5 text-gray-700">
            {renderedParts}
          </li>
        )
      }

      return (
        <p key={i} className="min-h-[1rem] my-1 text-gray-700 leading-relaxed">
          {renderedParts}
        </p>
      )
    })
  }

  return (
    <div className="max-w-4xl mx-auto px-4 py-8">
      {/* Header card with glassmorphism feel */}
      <div className="bg-gradient-to-r from-emerald-600 to-teal-600 rounded-2xl p-6 shadow-xl text-white mb-6 transform hover:scale-[1.01] transition-all duration-300">
        <div className="flex items-center gap-4">
          <div className="bg-white/20 p-3 rounded-full backdrop-blur-md animate-pulse">
            <Bot className="w-8 h-8 text-white" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-2xl font-extrabold tracking-tight">Casero Bot</h1>
              <span className="flex h-2.5 w-2.5 relative">
                <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-green-300 opacity-75"></span>
                <span className="relative inline-flex rounded-full h-2.5 w-2.5 bg-green-400"></span>
              </span>
            </div>
            <p className="text-emerald-100 text-sm mt-1">
              Tu consejero inteligente para encontrar las mejores ferias de Santiago. ¡Pregúntame lo que quieras casero!
            </p>
          </div>
        </div>
      </div>

      {/* Main chat interface */}
      <div className="bg-white rounded-2xl shadow-lg border border-gray-100 flex flex-col h-[600px] overflow-hidden">
        {/* Messages list */}
        <div className="flex-1 overflow-y-auto p-6 space-y-6 bg-gradient-to-b from-gray-50/50 to-white">
          {messages.map((msg, index) => {
            const isBot = msg.sender === 'bot'
            return (
              <div
                key={index}
                className={`flex gap-4 ${isBot ? 'justify-start' : 'justify-end'} animate-fade-in`}
              >
                {isBot && (
                  <div className="w-10 h-10 rounded-full bg-emerald-100 flex items-center justify-center flex-shrink-0 shadow-sm border border-emerald-200">
                    <Bot className="w-5 h-5 text-emerald-600" />
                  </div>
                )}
                
                <div
                  className={`max-w-[75%] rounded-2xl px-5 py-4 shadow-sm border relative ${
                    isBot
                      ? 'bg-white text-gray-800 border-gray-100 rounded-tl-none'
                      : 'bg-gradient-to-r from-emerald-600 to-emerald-700 text-white border-emerald-600 rounded-tr-none'
                  }`}
                >
                  {isBot ? (
                    <div className="space-y-1">{renderMessageText(msg.text)}</div>
                  ) : (
                    <p className="leading-relaxed whitespace-pre-wrap">{msg.text}</p>
                  )}
                  <span
                    className={`text-[10px] mt-2 block text-right ${
                      isBot ? 'text-gray-400' : 'text-emerald-200'
                    }`}
                  >
                    {msg.time}
                  </span>
                </div>

                {!isBot && (
                  <div className="w-10 h-10 rounded-full bg-emerald-600 flex items-center justify-center flex-shrink-0 shadow-sm text-white font-bold text-sm">
                    <User className="w-5 h-5 text-white" />
                  </div>
                )}
              </div>
            )
          })}

          {/* Loading Indicator */}
          {isLoading && (
            <div className="flex gap-4 justify-start animate-pulse">
              <div className="w-10 h-10 rounded-full bg-emerald-100 flex items-center justify-center flex-shrink-0">
                <Bot className="w-5 h-5 text-emerald-600 animate-spin" />
              </div>
              <div className="bg-white border border-gray-100 rounded-2xl rounded-tl-none px-5 py-4 shadow-sm max-w-[75%]">
                <div className="flex items-center gap-1.5 py-1">
                  <div className="w-2.5 h-2.5 bg-emerald-500 rounded-full animate-bounce" style={{ animationDelay: '0ms' }}></div>
                  <div className="w-2.5 h-2.5 bg-emerald-500 rounded-full animate-bounce" style={{ animationDelay: '150ms' }}></div>
                  <div className="w-2.5 h-2.5 bg-emerald-500 rounded-full animate-bounce" style={{ animationDelay: '300ms' }}></div>
                </div>
              </div>
            </div>
          )}
          
          <div ref={messagesEndRef} />
        </div>

        {/* Suggestion Chips */}
        {messages.length === 1 && !isLoading && (
          <div className="px-6 py-3 bg-gray-50/50 border-t border-gray-100 flex flex-wrap gap-2">
            {suggestionChips.map((chip, idx) => (
              <button
                key={idx}
                onClick={() => handleSend(chip)}
                className="text-xs bg-white hover:bg-emerald-50 hover:text-emerald-700 text-gray-600 px-3.5 py-2 rounded-full border border-gray-200 transition-all duration-200 shadow-sm active:scale-95 flex items-center gap-1.5 font-medium"
              >
                <Sparkles className="w-3.5 h-3.5 text-emerald-500" />
                {chip}
              </button>
            ))}
          </div>
        )}

        {/* Input Bar */}
        <form
          onSubmit={(e) => {
            e.preventDefault()
            handleSend()
          }}
          className="p-4 border-t border-gray-100 bg-white flex items-center gap-3"
        >
          <input
            type="text"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            disabled={isLoading}
            placeholder="Escriba un mensaje aquí... (ej: Recomiéndame ferias baratas en Maipú)"
            className="flex-1 px-4 py-3 border border-gray-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent text-sm disabled:bg-gray-50 transition-all duration-200 placeholder:text-gray-400"
          />
          <button
            type="submit"
            disabled={isLoading || !input.trim()}
            className="p-3 bg-emerald-600 text-white rounded-xl hover:bg-emerald-700 active:scale-95 transition-all duration-200 disabled:opacity-40 disabled:cursor-not-allowed shadow-md hover:shadow-lg flex items-center justify-center"
          >
            <Send className="w-5 h-5" />
          </button>
        </form>
      </div>
    </div>
  )
}