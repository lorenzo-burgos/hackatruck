//
//  Tela1.swift
//  Aula 3-1
//
//  Created by Student16 on 31/07/23.
//

import SwiftUI

struct Tela1: View {
    
    var body: some View {
        
        List(1...15, id: \.self) { item in
            Text(" Item \(item)")
        }
    }
}


struct Tela1_Previews: PreviewProvider {
    static var previews: some View {
        Tela1()
    }
}
