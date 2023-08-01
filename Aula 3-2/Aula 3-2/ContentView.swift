//
//  ContentView.swift
//  Aula 3-2
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Home")
            NavigationStack {
                VStack {
                    NavigationLink("Ir para tela 1") {
                        Text("Lorenzo Burgos HackaTruck")
                    }
                    Spacer().frame(height: 10)
                    NavigationLink("Ir para tela 2") {
                        Tela2()
                    }
                    Spacer().frame(height: 10)
                    NavigationLink("Ir para tela 3") {
                        Tela3()
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
