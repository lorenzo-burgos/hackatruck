//
//  scrollViewHorizontal.swift
//  Aula 4
//
//  Created by Student16 on 01/08/23.
//

import SwiftUI

var suggestions = [
    Song(id: 1, name: "Beatles 1", artist: "The Beatles", cover: "https://upload.wikimedia.org/wikipedia/pt/f/fb/Beatles-one.jpg"),
    Song(id: 2, name: "Beatles 2", artist: "The Beatles", cover: "https://1.bp.blogspot.com/-1VgpLzQ6n5k/XOwvDCxeNYI/AAAAAAAAA1E/vehJS3ZTOtMLSHPMG01sHh4yhdoPWw-_ACLcBGAs/s1600/2%2BFront%2B300dpi%2B1800x1800.jpg")
]

struct scrollViewHorizontal: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(suggestions){ showSong in
                        AsyncImage(url: URL(string: showSong.cover)!) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                } placeholder: {
                                    Image(systemName: "photo.fill")
                                }.frame(width: 200, height: 200)
                }
            }
        }
    }
}

struct scrollViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        scrollViewHorizontal()
    }
}
