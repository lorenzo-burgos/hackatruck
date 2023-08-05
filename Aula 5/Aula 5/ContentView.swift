//
//  ContentView.swift
//  Aula 5
//
//  Created by Student16 on 03/08/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

let locations: [Location] = [
    Location(name: "Jerusalém", coordinate: CLLocationCoordinate2D(latitude: 31.7683, longitude: 35.2137), flag: "🇵🇸", description: "Jerusalém atualmente ocupada por Israel mas pertencente a Palestina é uma das cidades mais sagradas para o Cristianismo, o Judaísmo e o Islã. É o local onde Jesus Cristo foi crucificado, sepultado e ressuscitado, tornando-se um ponto focal para os peregrinos cristãos."),
    Location(name: "Antioquia", coordinate: CLLocationCoordinate2D(latitude: 36.2019, longitude: 36.1613), flag: "🇸🇾", description: "Antioquia foi uma cidade da antiga Síria, onde os seguidores de Jesus foram chamados de cristãos pela primeira vez. A Igreja de Antioquia desempenhou um papel fundamental na propagação do Cristianismo."),
    Location(name: "Alexandria", coordinate: CLLocationCoordinate2D(latitude: 31.2156, longitude: 29.9553), flag: "🇪🇬", description: "Localizada no Egito, Alexandria foi um importante centro intelectual e teológico do Cristianismo primitivo. A cidade abrigava a famosa Escola de Alexandria, que teve uma influência significativa na teologia cristã."),
    Location(name: "Roma", coordinate: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964), flag: "🇮🇹", description: "Como capital do Império Romano, Roma se tornou um centro vital para a expansão e organização do Cristianismo. O apóstolo Pedro e o apóstolo Paulo são tradicionalmente associados a essa cidade."),
    Location(name: "Constantinopla", coordinate: CLLocationCoordinate2D(latitude: 41.0082, longitude: 28.9784), flag: "", description: "Esta cidade, que hoje é conhecida como Istambul pois é ilegalmente ocupada pela turquia, foi fundada pelo imperador romano Constantino, tornando-se a capital do Império Romano do Oriente. Em 1054 d.C., ocorreu o Grande Cisma, que dividiu a Igreja em duas partes: a Igreja Católica Romana no Ocidente e a Igreja Ortodoxa no Oriente, com o patriarca de Constantinopla liderando a Igreja Ortodoxa.")
]
struct ContentView: View {
    @State private var showingSheetView : Bool = false
    @State private var searchMap : Bool = false
    @State private var aux_name: String = locations[0].name
    @State private var aux_desc: String = locations[0].description
    @State private var aux_flag: String = locations[0].flag
    
    @State private var region = MKCoordinateRegion(
        center: locations[0].coordinate,
        span: MKCoordinateSpan(
            latitudeDelta: 25,
            longitudeDelta: 25)
    )
    var body: some View {
        NavigationStack{
            VStack {
                Map(coordinateRegion: $region, annotationItems: locations){ location in
                    MapAnnotation(coordinate: location.coordinate) {
                        Button {
                            aux_name = location.name
                            aux_flag = location.flag
                            aux_desc = location.description
                            
                            showingSheetView.toggle()
                        }label: {
                            Text("📍")
                            .font(.title)
                        }
                        .sheet(isPresented: $showingSheetView){
                        VStack {
                                
                            Text(aux_name)
                                .font(.title)
                                .bold()
                                .padding(.top)
                                
                            Text(aux_flag)
                                .frame(width: 100, height: 50)
                                .bold()
                            
                            Text(aux_desc)
                                .multilineTextAlignment(.center)
                                .bold()
                                .padding()
                            
                            Spacer()
                            
                        }
                    }
                }
                }
                .frame(height: 700)
                .cornerRadius(10)
                .shadow(radius: 10)
                .navigationBarTitle(aux_name)
                ScrollView(.horizontal){
                    HStack {
                        ForEach(locations) { location in
                            Button(){
                                aux_name = location.name
                                
                                searchMap.toggle();
                                region.center = location.coordinate
                            } label: {
                                Text(location.name)
                                    .bold()
                                    .font(.title2)
                                    
                            }
                            .padding(.leading)
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                            
                            }
                        }
                    .padding(.top)
                        Spacer()
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
