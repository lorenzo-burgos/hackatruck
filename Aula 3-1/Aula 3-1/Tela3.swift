//
//  Tela3.swift
//  Aula 3-1
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI


struct Tela3: View {
    @State var imagem = [
        "a",
        "b",
        "c",
        "d",
        "e",
    ]
    
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                ForEach(imagem, id: \.self){n in
                    Image(systemName: "pawprint.fill")
                        .resizable()
                        .scaledToFit()
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
