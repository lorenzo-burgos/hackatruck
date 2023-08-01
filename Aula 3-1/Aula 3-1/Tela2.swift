//
//  Tela2.swift
//  Aula 3-1
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI

struct Tela2: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
            
            Text("Hello, Hackatruck")
        }
    }
}

struct Tela2_Previews: PreviewProvider {
    static var previews: some View {
        Tela2()
    }
}
