//
//  Webclient.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 15.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

class Webclient {
    
    func getCameras(completion: @escaping (([Camera]?) -> Void)) {
        
        guard let url = URL(string: "https://tie.digitraffic.fi/api/v1/data/camera-data")else{
            fatalError("URL is not correct")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let cameras = try? JSONDecoder().decode([Camera].self, from: data)
            cameras == nil ? completion(nil) : completion(cameras)
            
        }.resume()
    }
}
