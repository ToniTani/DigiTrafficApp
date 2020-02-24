//
//  Webclient.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 15.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

class Webclient {
    
    func getCameras(by id: String, completion: @escaping (Camera) -> Void) {
        
        guard let url = URL(string: "https://tie.digitraffic.fi/api/v1/data/camera-data/\(id)") else {
            fatalError("URL is not correct")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
                    URLSession.shared.dataTask(with: url) { data, _, _ in
                        let cam = try! JSONDecoder().decode(Camera.self, from: data!)
                        DispatchQueue.main.async {
                            completion(cam)
                        }
                    }.resume()
                }
    }
    
}

