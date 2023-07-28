//
//  ContentView.swift
//  Aula 1
//
//  Created by Student16 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .scaledToFit()
            Text("Hackatruck")
                .foregroundStyle(.blue)
                .fontWeight(.bold)
                .font(.largeTitle)
            HStack{
                Text("Maker")
                    .foregroundStyle(.yellow)
                    .fontWeight(.bold)
                Text("Space")
                    .foregroundStyle(.red)
                    .fontWeight(.bold)
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
