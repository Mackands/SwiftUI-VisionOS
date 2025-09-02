//
//  Area.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 09/01/25.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable
{
    case astronauts, equipment, mission
    var id : Self { self }
    var name : String { rawValue.lowercased() }
    
    var title : String {
        switch self {
        case .astronauts:
            "Vision mission crew members..."
        case .equipment:
            "Vision mission equipment..."
        case .mission:
            "Vision mission trailer..."
        }
    }
}
