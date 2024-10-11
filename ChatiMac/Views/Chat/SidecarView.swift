//
//  SidecarView.swift
//  ChatiMac
//
//  Created by Emeric on 9/10/24.
//

import SwiftUI

struct SidecarView: View {
    @State private var savedConversations: [String] = ["Conversación 1", "Conversación 2"]

    var body: some View {
        VStack {
            Text("Conversaciones Guardadas")
                .font(.headline)
                .padding(.top)
            
            List(savedConversations, id: \.self) { conversation in
                Text(conversation)
            }
            Spacer()
        }
        .frame(width: 150)
    }
}

struct SidecarView_Previews: PreviewProvider {
    static var previews: some View {
        SidecarView()
    }
}
