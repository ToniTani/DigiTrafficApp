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
        self.fetch()
    }
}

extension CameraViewModel {
    func fetch(_ id: String = "C01502") {
        Webclient().getCameras(by: id) {
            self.current = $0
        }
    }
}
