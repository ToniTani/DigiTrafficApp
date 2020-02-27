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
    
    @ObservedObject var imageFromWeb: ImageFromWeb
    @State var image: UIImage = UIImage()
    @State private var zoomed: Bool = true

    
    
    init(withURL url: String) {
        imageFromWeb = ImageFromWeb(urlString: url)
    }
    
    var body: some View {
        VStack {
            Image(uiImage: imageFromWeb.data != nil ? UIImage(data:imageFromWeb.data!)! : UIImage())
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            }
    }
}

class ImageFromWeb: ObservableObject {
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
