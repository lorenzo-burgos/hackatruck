//
//  Tela3.swift
//  Aula 3-2
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI

struct Tela3: View {
    @State var Nome: String = ""
    var body: some View {
        NavigationStack{
        VStack{
            TextField("Seu Nome", text: $Nome)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Estamos criando um caminho \(Nome)!")

                NavigationLink("CAMINHO"){
                    Text("\(Nome)")
                }
            }
        }
    }
}

struct Tela3_Previews: PreviewProvider {
    static var previews: some View {
        Tela3()
    }
}
