//
//  SpecificCameraView.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 24.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct PresetCameraView: View {
    
        let cPreset: CameraPresets
    @State private var zoomed: Bool = false
    
        var body: some View {
            VStack {
                
                Text(cPreset.presentationName)
                    .font(.custom("Copperplate", size: 25))
               // Text(cPreset.measuredTime)
                //    .font(.custom("Copperplate", size: 25))

                ImageView(withURL: cPreset.imageUrl)
                    }
                }
            
        }
          

