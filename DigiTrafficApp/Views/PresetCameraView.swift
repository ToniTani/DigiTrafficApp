//
//  SpecificCameraView.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 24.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct PresetCameraView: View {
        var cPreset: CameraPresets
        
        var body: some View {
            VStack {
                Text(cPreset.presentationName)
                ImageView(withURL: cPreset.imageUrl)
            }
        }
    }
