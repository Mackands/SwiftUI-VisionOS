//
//  Crew.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 09/01/25.
//

import Foundation

enum Crew : String, Identifiable, CaseIterable, Equatable
{
    case marcus, bob, john, jane
    var id : Self { self }
    var name : String { rawValue.lowercased() }
    
    var fullName : String
    {
        switch self
        {
        case .marcus:
            "Marcus Marley"
        case .bob:
            "Bob Leyws"
        case .john:
            "John Stacky"
        case .jane:
            "Jane Queen"
        }
    }
    
    var about : String
    {
        switch self
        {
        case .marcus:
            "Marcus Marley is a famous musician and singer. He was born in Jamaica and grew up in Trinidad."
        case .bob:
            "Bob Leyws is a famous musician and singer. He was born in Jamaica and grew up in Trinidad."
        case .john:
            "John Stacky is a famous musician and singer. He was born in Jamaica and grew up in Trinidad."
        case .jane:
            "Jane Queen is a famous musician and singer. She was born in Jamaica and grew up in Trinidad"
        }
    }
}
