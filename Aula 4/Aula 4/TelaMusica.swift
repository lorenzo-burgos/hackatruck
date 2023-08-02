//
//  TelaMusica.swift
//  Aula 4
//
//  Created by Student16 on 01/08/23.
//

import SwiftUI

struct TelaMusica: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("MyColor"), .black]), startPoint: .top, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Image(systemName: "person.text.rectangle.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(.all, 60.0)
                    .foregroundColor(.white)
                    Spacer()
                HStack{
                    VStack{
                        Text("Musica")
                            .foregroundColor(.white)
                            .bold()
                            
                        Text("Artista")
                            .foregroundColor(.white)
                        Spacer()
                        
                        HStack() {
                            Image(systemName: "shuffle")
                            Image(systemName: "backward.end.fill")
                            Image(systemName: "play.fill")
                            Image(systemName: "forward.end.fill")
                            Image(systemName: "repeat")
                        }.foregroundColor(.white)
                            .scaledToFill()
                    
                        Spacer()
                    }
                }
            }
        }
    }
}

struct TelaMusica_Previews: PreviewProvider {
    static var previews: some View {
        TelaMusica()
    }
}
