//
//  EquipmentArea.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 10/01/25.
//

import SwiftUI

struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openwindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        HStack {
            VStack {
                Image("crew-bob")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                
                Toggle(model.isShowingRocketCapsule ? "Hide Rocket Capsule (Volumetric)" : "Show Rocket Capsule (Volumetric)", isOn: $model.isShowingRocketCapsule)
                    .onChange(of: model.isShowingRocketCapsule) { _,
                        isShowing in
                        if isShowing {
                            // openWindow volumetric
                        }
                        else
                        {
                            // dismissWindow volumetric
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
            
            VStack {
                Image("crew-marcus")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                
                Toggle(model.isShowingIphone ? "Hide Iphone (Volumetric)" : "Show Iphone (Volumetric)", isOn: $model.isShowingIphone)
                    .onChange(of: model.isShowingIphone) { _,
                        isShowing in
                        if isShowing {
                            // openWindow volumetric
                        }
                        else
                        {
                            // dismissWindow volumetric
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
        }
    }
}

#Preview {
    EquipmentArea()
        .environment(ViewModel())
}
