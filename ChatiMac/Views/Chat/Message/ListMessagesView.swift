//
//  ListMessagesView.swift
//  ChatiMac
//
//  Created by Emeric on 9/10/24.
//

import SwiftUI

struct ListMessageView: View {
    
    var messages: [ChatMessage] = []
    
    var body: some View {
        ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(messages, id: \.id) { chatMessage in
                        MessageBubbleView(chatMessage: chatMessage)
                    }
                }
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color(hex: "#f4f7ff")) // Fondo de la conversación
        .cornerRadius(10)
        .padding(.bottom, 10)
        .padding(.top, 10)
    }
}

struct ListMessageView_Previews: PreviewProvider {
    static var previews: some View {
        var messages: [ChatMessage] = []
        messages.append(ChatMessage(message:  "Dime ques es la Inteligencia Artificial General, en el 2024? ", type: .user))
        messages.append(ChatMessage(message:  "Es el avance de la humanidad al siguiente nivel", type: .bot))
        messages.append(ChatMessage(message:  "Dime ques es la Inteligencia Artificial General, en el 2024? ", type: .user))
        messages.append(ChatMessage(message:  "Es el avance de la humanidad al siguiente nivel", type: .bot))
        
        return ListMessageView(messages: messages)
        
    }
}
