//
//  Camera.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

struct Camera: Codable {
    let dataUpdatedTime: String
    let cameraStations: [CameraStations]
}

struct CameraStations: Codable, Identifiable {
    let id: String
    let roadStationId, nearestWeatherStationId: Int
    let cameraPresets: [CameraPresets]
    
}

struct CameraPresets: Codable, Identifiable {
    let id: String
    let presentationName: String
    let imageUrl: String
    let measuredTime: String
}

