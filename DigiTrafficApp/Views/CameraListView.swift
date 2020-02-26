//
//  CameraListView.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 24.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct CameraListView: View {
    
        var camera: Camera?
        var height: CGFloat = 0
        
        var body: some View {
            VStack {
                NavigationView {
                    List {
                        if (camera?.cameraStations[0].cameraPresets != nil) {
                            ForEach((camera?.cameraStations[0].cameraPresets)!) { cameraPreset in
                                NavigationLink(destination: PresetCameraView(cPreset:  cameraPreset)) {
                                    Text(cameraPreset.presentationName)
                                }
                            }
                        }
                    }.navigationBarTitle(Text("Kamerat"))
                }
            }
        }
    }
struct CameraListView_Previews: PreviewProvider {
    static var previews: some View {
        CameraListView()
    }
}
