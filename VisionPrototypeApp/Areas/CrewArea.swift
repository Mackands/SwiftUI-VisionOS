//
//  CrewArea.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 09/01/25.
//

import SwiftUI

struct CrewArea: View {
    var body: some View {
        HStack {
            ForEach(Crew.allCases){ crew in
                VStack(alignment: .center) {
                    Image("crew-\(crew.name)")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding(10)
                    Text(crew.fullName)
                        .font(.system(size: 22, weight: .bold))
                    Text(crew.about)
                        .font(.system(size: 16))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(15)
                .glassBackgroundEffect()
            }
        }.padding(20)
    }
}

#Preview {
    CrewArea()
}
