//
//  ContentView.swift
//  Aula 1 D2
//
//  Created by Student16 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .scaledToFill()
            Image("caminhao")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                                    Text("Hackatruck")
                                        .foregroundColor(.blue)
                                        .fontWeight(.bold)
                                        .offset(y: -50)
                                )
            ZStack{
                Rectangle()
                    .offset(y: 30)
                HStack{
                    Text("Maker")
                        .foregroundColor(.yellow)
                    Text("Space")
                        .foregroundColor(.red)
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
