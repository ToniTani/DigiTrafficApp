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
    
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()
    
    init(withURL url: String) {
        imageLoader = ImageLoader(urlString: url)
    }
    
    var body: some View {
        VStack {
            Image(uiImage: imageLoader.data != nil ? UIImage(data:imageLoader.data!)! : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
    }
}
