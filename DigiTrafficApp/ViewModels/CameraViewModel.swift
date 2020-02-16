//
//  CameraViewModel.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

struct CameraViewModel {
    
    let camera: Camera
    
    var presentationName: String {
        return self.camera.presentationName.uppercased()
    }
}
