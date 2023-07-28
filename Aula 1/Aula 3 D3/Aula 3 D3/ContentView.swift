import SwiftUI

struct ContentView: View {
    @State var onclick = false
    @State private var nome: String = "Fulano"
    @State private var Alerta = false
    
    var body: some View {
        VStack {
            Text("Bem Vindo, \(nome)")
                .font(.largeTitle)
            TextField("Digite seu Nome", text: $nome)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            ZStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.1)
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width:300, height: 100)
                        .scaledToFit()
                    Image("truck")
                        .resizable()
                        .frame(width:250, height: 100)
                        .scaledToFit()
                }
            }
            Spacer()
            Button(action: {
                Alerta = true
                        }) {
                            Text("Entrar")
                                .foregroundColor(.yellow)
                                .fontWeight(.bold)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                        }
                        .alert(isPresented: $Alerta){
                            Alert(title: Text("ALERTA!"), message: Text("Voce ira iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos la!")))
                        }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
