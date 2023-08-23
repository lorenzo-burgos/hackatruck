//
//  Bolsa.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct Bolsa: View {
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
                        Text("Bovespa Exemplo")
                            .font(.largeTitle)
                            .bold()
                        ZStack{
                            Rectangle()
                                .frame(width: 300, height: 200)
                                .foregroundColor(Color.gray)
                            Text("Grafico da Bolsa")
                                .bold()
                        }
                        ScrollView{
                            NavigationLink(destination: Acao()){
                                Text("Petr4 Exemplo")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(Color.black)
                            }
                            NavigationLink(destination: Acao()){
                                Text("Vale4 Exemplo")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(Color.black)
                            }
                        }
                    }
                }
            }
                .padding()
        Spacer()
        }.navigationBarBackButtonHidden(true)
    }
}

struct Bolsa_Previews: PreviewProvider {
    static var previews: some View {
        Bolsa()
    }
}
