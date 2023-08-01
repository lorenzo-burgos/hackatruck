//
//  Tela2.swift
//  Aula 3-2
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI

struct Tela2: View {
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack {
            Button("Sheet View") {
                isSheetPresented = true
            }
            .padding()
        }
        .sheet(isPresented: $isSheetPresented, content: {
            SheetView()
        })
    }
}

struct Tela2_Previews: PreviewProvider {
    static var previews: some View {
        Tela2()
    }
}

struct SheetView: View {
    var body: some View {
        VStack {
            Text("Lorenzo Burgos Hackatruck")
                .font(.headline)
                .padding()
        }
    }
}

