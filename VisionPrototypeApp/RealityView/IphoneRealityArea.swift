//
//  IphoneRealityArea.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 10/01/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct IphoneRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in:
                realityKitContentBundle) else {
                fatalError("Unable to load Scene model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    IphoneRealityArea()
        .environment(ViewModel())
}
