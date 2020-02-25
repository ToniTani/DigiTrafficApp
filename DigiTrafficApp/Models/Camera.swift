//
//  Camera.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

struct Camera: Codable {
    let dataUpdatedTime: Date
    let cameraStations: [CameraStations]
}

// MARK: - CameraStation
struct CameraStations: Codable {
    let id: String
    let roadStationID: Int
    let nearestWeatherStationID: Int?
    let cameraPresets: [CameraPresets]

    enum CodingKeys: String, CodingKey {
        case id
        case roadStationID = "roadStationId"
        case nearestWeatherStationID = "nearestWeatherStationId"
        case cameraPresets
    }
}

// MARK: - CameraPreset
struct CameraPresets: Codable {
    let id: String
    let presentationName: String?
    let imageURL: String
    let measuredTime: Date?

    enum CodingKeys: String, CodingKey {
        case id, presentationName
        case imageURL = "imageUrl"
        case measuredTime
    }
}
