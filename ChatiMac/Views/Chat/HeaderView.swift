//
//  HeaderView.swift
//  ChatiMac
//
//  Created by Emeric on 9/10/24.
//

import SwiftUI

struct HeaderView: View {
    @State private var selectedModel: String = "GPT-4"
    @State private var searchText: String = ""

    let models = ["GPT-3.5", "GPT-4", "Claude", "Gemini"]


    var body: some View {
        HStack {
            Picker("Modelo", selection: $selectedModel) {
                ForEach(models, id: \.self) { model in
                    Text(model)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .frame(width: 150)
            
            Spacer()
            
            // Botón de búsqueda
            TextField("Buscar en la conversación", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
            
            Button(action: {
                // Acción de búsqueda
                print("Buscando en las conversaciones...")
            }) {
                Image(systemName: "magnifyingglass")
            }
            .padding(.leading, 8)
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
