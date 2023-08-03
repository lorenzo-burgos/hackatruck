//
//  TelaMusica.swift
//  Aula 4
//
//  Created by Student16 on 01/08/23.
//

import SwiftUI

struct TelaMusica: View {
    var song: Song
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("MyColor"), .black]), startPoint: .top, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                AsyncImage(url: URL(string: song.cover)!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all, 60.0)
                } placeholder: {
                    Text("Failed to load")
                }
                
                Spacer()
                
                HStack {
                    VStack {
                        Text(song.name)
                            .foregroundColor(.white)
                            .bold()
                        
                        Text(song.artist)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "shuffle")
                            Image(systemName: "backward.end.fill")
                            Image(systemName: "play.fill")
                            Image(systemName: "forward.end.fill")
                            Image(systemName: "repeat")
                        }
                        .foregroundColor(.white)
                        .scaledToFill()
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

