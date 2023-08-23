//
//  Investimentos.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct Investimentos: View {
    @State var acaoSeguir: String = ""
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
                        HStack{
                            NavigationLink(destination: Menu()){
                                Text("Go Back")
                                    .foregroundColor(Color.white)
                                Spacer()
                            }
                        }
                        VStack {
                            TextField("digite seus investimentos", text: $acaoSeguir)
                                .padding()
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        Spacer()

                    }
                }
            }
            .padding()
            .background(Color("Gray3"))
        }.navigationBarBackButtonHidden(true)
    }
}

struct Investimentos_Previews: PreviewProvider {
    static var previews: some View {
        Investimentos()
    }
}
