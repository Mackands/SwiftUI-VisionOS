//
//  VisionPrototypeAppApp.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 09/01/25.
//

import SwiftUI

@main
struct VisionPrototypeAppApp: App {

    //@State private var appModel = AppModel()
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            Areas()
                .environmentObject(ViewModel())
        }
        .defaultSize(CGSize(width: 200, height: 150))
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        WindowGroup(id: "CapsuleRealityArea") {
            CapsuleRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "IphoneRealityArea") {
            IphoneRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in : .full)
    }
    
    init(){
        OrbitComponent.registerComponent()
        OrbitSystem.registerSystem()
    }
}
