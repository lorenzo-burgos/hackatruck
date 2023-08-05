//
//  Struct.swift
//  aula 6
//
//  Created by Student16 on 04/08/23.
//

import Foundation

struct Bard: Decodable, Hashable {
    let index: String
    let name: String
    let hit_die: Int
    let proficiency_choices: [ProficiencyChoice]
    let proficiencies: [Proficiency]
    let saving_throws: [SavingThrow]
    let starting_equipment: [StartingEquipment]
    let starting_equipment_options: [StartingEquipmentOption]
    let class_levels: String
    let multi_classing: MultiClassing
    let subclasses: [Subclass]
    let spellcasting: Spellcasting
    let spells: String
    let url: String
}

struct ProficiencyChoice: Decodable, Hashable {
    let desc: String
    let choose: Int
    let type: String
    let from: OptionsArray
}

struct OptionsArray: Decodable, Hashable {
    let option_set_type: String
    let options: [ProficiencyOption]
}

struct ProficiencyOption: Decodable, Hashable {
    let option_type: String
    let item: Proficiency?
}

struct Proficiency: Decodable, Hashable {
    let index: String?
    let name: String?
    let url: String?
}

struct SavingThrow: Decodable, Hashable {
    let index: String
    let name: String
    let url: String
}

struct StartingEquipment: Decodable, Hashable {
    let equipment: Proficiency
    let quantity: Int
}

struct StartingEquipmentOption: Decodable, Hashable {
    let desc: String
    let choose: Int
    let type: String
    let from: OptionsArray
}

struct MultiClassing: Decodable, Hashable {
    let prerequisites: [Prerequisite]
    let proficiencies: [Proficiency]
    let proficiency_choices: [ProficiencyChoice]
}

struct Prerequisite: Decodable, Hashable {
    let ability_score: AbilityScore
    let minimum_score: Int
}

struct AbilityScore: Decodable, Hashable {
    let index: String
    let name: String
    let url: String
}

struct Subclass: Decodable, Hashable {
    let index: String
    let name: String
    let url: String
}

struct Spellcasting: Decodable, Hashable {
    let level: Int
    let spellcasting_ability: AbilityScore
    let info: [SpellInfo]
}

struct SpellInfo: Decodable, Hashable {
    let name: String
    let desc: [String]
}
