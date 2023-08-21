//
//  ContentView.swift
//  Futura
//
//  Created by Student16 on 18/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoggedIn: Bool = false

    var body: some View {
        
        NavigationStack{
            ZStack {
                VStack {
                    HStack {
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
                    VStack {
                        TextField("email@email.com", text: $email)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        SecureField("*********", text: $password)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Spacer()
                    NavigationLink(destination: Menu()){
                        Text("Login")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

