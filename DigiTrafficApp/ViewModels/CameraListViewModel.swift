//
//  CameraListViewModel.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

/* import Foundation
import Combine


class CameraListViewModel: ObservableObject {
    
    
    private var webService: Webclient!
    @Published var current: Camera?
    
    init() {
        
        self.webService = Webclient()
    }
    
    var searchTerm: String = ""
    
    var idName: String = ""
    
    func search() {
        if let id = self.idName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchCamera(by: id)
        }
    }
    
    private func fetchCamera(by id: String) {
        
        self.webService.getCameras(by: id) { camera in
        if let camera = camera {
            DispatchQueue.main.async {
            self.current = camera
            }
            }
        }
    }
    
}
*/
