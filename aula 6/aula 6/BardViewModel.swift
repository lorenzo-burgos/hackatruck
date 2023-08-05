//
//  BardViewModel.swift
//  aula 6
//
//  Created by Student16 on 04/08/23.
//

import SwiftUI

class BardViewModel: ObservableObject {
    
    @Published var bard: Bard?

    func fetchData() {
        guard let url = URL(string: "https://www.dnd5eapi.co/api/classes/bard") else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching data: \(error)")
                return
            }

            guard let data = data else {
                print("No data received.")
                return
            }

            do {
                let decoder = JSONDecoder()
                let bardData = try decoder.decode(Bard.self, from: data)
                DispatchQueue.main.async {
                    self.bard = bardData
                }
            } catch {
                print("Error decoding data: \(error)")
            }
        }.resume()
    }
}
