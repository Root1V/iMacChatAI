//
//  ChatMessage.swift
//  ChatiMac
//
//  Created by Emeric on 9/10/24.
//
import Foundation

struct ChatMessage {
    enum MessageType {
        case user
        case bot
    }
    
    let id = UUID()
    var message: String
    let type: MessageType
}
