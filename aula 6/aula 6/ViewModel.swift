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
                Text("D&DPedia")
                Text(viewModel.bard!.name)
                Spacer()
                Text("Hit Die: D\(viewModel.bard!.hit_die)")
                Spacer()
                VStack{
                    Text("Tool Proeficiency")
                    ForEach(viewModel.bard!.proficiency_choices, id: \.self) { choice in
                        Text(choice.desc)
                    }
                    Spacer()
                    Text("Weapons Proficiencies:")
                    ForEach(viewModel.bard!.proficiencies.prefix(6), id: \.self) { proficiency in
                        if let proficiencyName = proficiency.name {
                            Text(proficiencyName)
                        }
                    }
                    VStack{
                        Spacer()
                        Text("Saving Throws")
                        ForEach(viewModel.bard!.saving_throws, id: \.self){savingthrow in
                            Text(savingthrow.name)
                        }
                        Spacer()
                        Text("Starting equipment:")
                        ForEach(viewModel.bard!.starting_equipment, id: \.self){ startingequipment in
                            Text(startingequipment.equipment.name!)
                        }
                    }
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

