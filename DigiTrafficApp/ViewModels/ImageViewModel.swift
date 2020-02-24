//
//  ImageViewModel.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 24.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation
import SwiftUI

struct ImageView: View {
    
    @ObservedObject var imageFromWeb: ImageLoader
    @State var image: UIImage = UIImage()
    
    init(withURL url: String) {
        imageFromWeb = ImageLoader(urlString: url)
    }
    
    var body: some View {
        VStack {
            Image(uiImage: imageFromWeb.data != nil ? UIImage(data:imageFromWeb.data!)! : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
    }
}

class ImageLoader: ObservableObject {
    @Published var data:Data?

    init(urlString: String) {
        if let url = URL(string: urlString) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url)
                if let data = data {
                    DispatchQueue.main.async {
                        self.data = data
                    }
                }
            }
        }
    }
}
