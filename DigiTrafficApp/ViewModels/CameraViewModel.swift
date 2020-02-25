//
//  CameraViewModel.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation
import Combine

final class CameraViewModel: ObservableObject {
    @Published var current: Camera?
    
    init() {
        self.fetchCameras()
    }
}

extension CameraViewModel {
    func fetchCameras(_ id: String = "C01508") {
        Webclient().getCameras(by: id) {
            self.current = $0
        }
    }
}
