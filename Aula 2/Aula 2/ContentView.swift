import SwiftUI

struct ContentView: View {
    @State var pesoStr: String = ""
    @State var alturaStr: String = ""
    @State var peso: Float = 0.0
    @State var altura: Int = 0
    @State var imc: Float = 0.0
    @State var texto: String = ""
    @State var backGround: Color = Color("")
    @State var cor: String = "normal"
    
    var body: some View {
        ZStack{
          backGround
            VStack {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Peso em KG", text: $pesoStr)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                TextField("Altura em CM", text: $alturaStr)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Calcular") {
                    calculateIMC()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                
                Text("\(texto)")
                
                Spacer()
                Image("tabela")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
        }
    
    func calculateIMC() {
        if let pesoFloat = Float(pesoStr), let alturaInt = Int(alturaStr) {
            peso = pesoFloat
            altura = alturaInt
            let alturaMetros = Float(altura) / 100.0
            imc = peso / (alturaMetros * alturaMetros)
            
            if imc < 18.5 {
                texto = "Baixo peso"
                backGround = Color("BaixoPeso")
                
            } else if imc < 24.9 {
                texto = "Normal"
                backGround = Color("Normal")
            } else if imc < 29.9 {
                texto = "Sobrepeso"
                backGround = Color("Sobrepeso")
            } else if imc > 30 {
                texto = "Obesidade"
                backGround = Color("Obesidade")
            }
        } else {
            texto = "Por favor, insira valores válidos para peso e altura."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
