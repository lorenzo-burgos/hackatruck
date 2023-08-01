//
//  ContentView.swift
//  Aula 3-1
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tela1()
                .badge(2)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Tela2()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
            }
            Tela3()
                .tabItem {
                    Label("Photos", systemImage: "photo")
            }
            Tela4()
                .badge("!")
                .tabItem {
                    Label("Messages", systemImage: "")
            }
            Tela5()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
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
