//
//  Test.swift
//  ChatiMac
//
//  Created by Emeric on 10/10/24.
//

import SwiftUI

class CounterViewModel: ObservableObject {
    @Published var counter: Int = 0
}

struct TestView: View {
    
    @StateObject var counterView  = CounterViewModel()
    
    var body: some View {
        Text("Cantidad \(counterView.counter)")
        Button(action: {
            counterView.counter += 1
        }) {
            Text("Incrementar Conter")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
