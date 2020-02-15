//
//  Webclient.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 15.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

class Webclient {
    
    func get cameraInfo(completion: @escaping ([Camera]?) -> Void){
        guard let url = URL(string: "https://tie.digitraffic.fi/api/v1/data/camera-data")else{
            fatalError("URL is not correct")
        }
    }
}
