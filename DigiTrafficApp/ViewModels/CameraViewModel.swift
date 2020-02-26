//
//  CameraViewModel.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation
import Combine

 class CameraViewModel: ObservableObject {
    
    @Published var current: Camera?
    
    init() {
        self.fetchCameras()
    }
    
    var idName: String = ""

    func search() {
        if let id = self.idName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchCameras(id)
        }
    }
}

    
extension CameraViewModel {
    func fetchCameras(_ id: String = "C01508") {
        Webclient().getCameras(by: id) {
            self.current = $0
        }
    }
}

