//
//  NavigationToAreas.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 09/01/25.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            Text("Welcome to The Vision Mission Team ")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 250)
                
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title.capitalized)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        // Sub-view go here
                        if area == Area.astronauts {
                            CrewArea()
                        }
                        else if area == Area.equipment {
                            EquipmentArea()
                        }
                        else if area == Area.mission {

                        }
                        
                        Spacer()
                    } label: {
                        Label(area.name.capitalized, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
        .background(){
            Image("Background")
        }
    }
}

#Preview {
    NavigationToAreas()
}
