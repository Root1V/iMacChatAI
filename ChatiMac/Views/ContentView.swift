//
//  ContentView.swift
//  ChatiMac
//
//  Created by Emeric on 9/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputText: String = ""
    @State private var chatMessages: [ChatMessage] = []

    
    var body: some View {
        HStack {
            // Sidecar de conversaciones guardadas
            SidecarView()
            
            // Sección principal del chat
            VStack {
                // Encabezado con selección de modelo y botón de búsqueda
                HeaderView()
                
                Divider()
                
                // Ventana de chat
                ListMessageView(messages: chatMessages)
                
                // Campo de entrada de texto
                ChatInputView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    // Función para enviar un mensaje
    func sendMessage() {
        if !inputText.isEmpty {
            chatMessages.append(ChatMessage(message: inputText, type: .user))
            inputText = ""
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
