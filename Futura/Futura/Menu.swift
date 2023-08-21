//
//  Menu.swift
//  Futura
//
//  Created by Student16 on 21/08/23.
//

import SwiftUI

struct Menu: View {
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
                    Spacer()
                    VStack{
                        HStack{
                            NavigationLink(destination: ContentView()){
                                Text("Log out")
                            }
                            Spacer()
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 300, height: 60)
                                .foregroundColor(.blue).cornerRadius(15)
                            NavigationLink(destination: Explorar()){
                                Text("Explorar")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                                            
                                        }
                                        Spacer()

                                        Rectangle().frame(width: 250, height: 250)
                                        
                            ZStack{
                                    Rectangle()
                                    .frame(width: 300, height: 60)
                                    .foregroundColor(.blue).cornerRadius(15)
                                            Text("Destaques")    .font(.largeTitle)
                                    .foregroundColor(.white)
                                        }
                                        
                            ZStack{
                                    Rectangle().frame(width: 300, height: 60).foregroundColor(.blue).cornerRadius(15)
                                            Text("Meus Investimentos").font(.largeTitle).scaleEffect(0.9)
                                          .foregroundColor(.white)
                                        }
                                        
                                        Spacer()
                                    }
                                    
                                }
                    }.padding()
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
