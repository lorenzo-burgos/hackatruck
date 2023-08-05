//
//  ViewModel.swift
//  aula 6
//
//  Created by Student16 on 04/08/23.
//

import SwiftUI

struct ViewModel: View {
    @StateObject private var viewModel = BardViewModel()

    var body: some View {
        VStack {
            if let bard = viewModel.bard {
                Text(viewModel.bard!.name)
                Text("Hit Die: D\(viewModel.bard!.hit_die)")
                Text("Proficiency Choices:")
                ForEach(viewModel.bard!.proficiency_choices, id: \.self) { choice in
                    Text(choice.desc)
                }
            } else {
                ProgressView()
            }
            
        }
        .onAppear(perform: {
            viewModel.fetchData()
        })
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}

