//
//  ViewModel.swift
//  VisionPrototypeApp
//
//  Created by EWI DEVELOPER 8 on 09/01/25.
//

import Foundation

@Observable
class ViewModel: ObservableObject {
    var navigationPath: [Area] = []
    var isShowingRocketCapsule: Bool = false
    var isShowingIphone: Bool = false
}
