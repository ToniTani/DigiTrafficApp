//
//  ContentView.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 14.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = 0
    @ObservedObject var camVM = CameraViewModel()
    @State var id: String = ""

    init() {
                
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        UITableViewCell.appearance().backgroundColor = UIColor.gray
        UITableView.appearance().backgroundColor = UIColor.black

        
        Webclient().getCameras(by: "C01508") {
            print($0 ?? "C01508")
        }
    }
    
 var body: some View {
                
                VStack (alignment: .center) {
                    TextField("SEARCH BY ID:", text: self.$camVM.idName){
                        self.camVM.search()

                    }.foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(11)
                    .padding(14)

                    
                    CameraListView(camera: self.camVM.current)
                }.font(.custom("Arial", size: 24))
                               .foregroundColor(Color.black)
                               .offset(y: 30)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
