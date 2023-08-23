//
//  Explorar.swift
//  Futura
//
//  Created by Student16 on 21/08/23.
//

import SwiftUI

struct Explorar: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Futur")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
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
                            .foregroundColor(Color.white)
                            .offset(y:-20)
                        Spacer()
                    }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .offset(y:-20)
                        .foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        NavigationLink(destination: Menu()){
                            Text("Go back")
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        Spacer()
                        ScrollView{
                            NavigationLink(destination: Bolsa()){
                                VStack{
                                    Text("Bovespa Exemplo")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(Color.white)
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 300, height: 200)
                                            .foregroundColor(Color.white)
                                        Text("Grafico da Bolsa")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color.black)
                                    }
                                }
                            }
                            NavigationLink(destination: Bolsa()){
                                VStack{
                                    Text("Nasdaq Exemplo")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(Color.white)
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 300, height: 200)
                                            .foregroundColor(Color.white)
                                        Text("Grafico da Bolsa")
                                            .font(.largeTitle)
                                            .bold()
                                            .foregroundColor(Color.black)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            .background(Color("Gray3"))
        }.navigationBarBackButtonHidden(true)
    }
}

struct Explorar_Previews: PreviewProvider {
    static var previews: some View {
        Explorar()
    }
}
