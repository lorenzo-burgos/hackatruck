//
//  ContentView.swift
//  Aula 4
//
//  Created by Student16 on 01/08/23.
//

import SwiftUI

var songs = [
    Song(id: 1, name: "Pink Life", artist: "Pink Guy", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 2, name: "Stfu", artist: "Filthy Frank", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 3, name: "Uber Pussy", artist: "Lord ChinChin", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 4, name: "Small Dick", artist: "Joji", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 5, name: "Teste 1", artist: "Teste", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 6, name: "Teste 2", artist: "Teste", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 7, name: "Teste 3", artist: "Teste", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
    Song(id: 8, name: "Teste 4", artist: "Teste", cover: "https://akamai.sscdn.co/uploadfile/letras/albuns/4/6/4/b/558631484572981.jpg"),
]

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("MyColor"), .black]), startPoint: .top, endPoint: .bottomLeading)
                ScrollView(.vertical){
                    VStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .padding(80)
                        
                        HStack {
                            Text("HackaFM")
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }.padding(.leading)
                        HStack{
                            Image("logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80)
                            Text("HackaSong")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        Spacer()
                        
                        VStack(spacing: 12){
                            ForEach(songs) { showSong in
                                
                                NavigationLink(destination: TelaMusica()){
                                    
                                    HStack{
                                        AsyncImage(url: URL(string: showSong.cover)!) { image in
                                                    image
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                } placeholder: {
                                                    Image(systemName: "photo.fill")
                                                }.frame(width: 70, height: 70)
                                        
                                        VStack {
                                            Text(showSong.name)
                                                .font(.subheadline)
                                                .foregroundColor(.white)
                                                .bold()
                                            
                                            Text(showSong.artist)
                                                .font(.subheadline)
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                    
                                }
                            }
                            HStack {
                                VStack {
                                    Text("Sugeridos")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title)
                                }
                                Spacer()
                            }.padding(.leading)
                            Spacer()
                            scrollViewHorizontal()
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

