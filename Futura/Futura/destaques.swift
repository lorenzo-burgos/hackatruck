//
//  destaques.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct destaques: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Futur")
                            .font(.largeTitle)
                            .bold() +
                        Text("a")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(Color.blue)
                        Spacer()
                        Rectangle()
                            .frame(width: 120, height: 30)
                            .foregroundColor(Color.blue)
                            .cornerRadius(10)
                    }
                    HStack {
                        Text("Investimentos")
                            .font(.largeTitle)
                            .offset(y:-20)
                        Spacer()
                    }
                    VStack{
                        HStack{
                            NavigationLink(destination: Menu()){
                                Text("Go Back")
                            }
                            Spacer()
                        }
                    }
                }
            }
                .padding()
        Spacer()
        }.navigationBarBackButtonHidden(true)
    }
}

struct destaques_Previews: PreviewProvider {
    static var previews: some View {
        destaques()
    }
}
