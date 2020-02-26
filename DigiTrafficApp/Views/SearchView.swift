//
//  SearchView.swift
//  DigiTrafficApp
//
//  Created by Toni Tani on 16.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchTerm: String
    
        @State var id: String = ""
        @ObservedObject var camVM = CameraViewModel()

    
        var body: some View {
          
            HStack {
                      Spacer()
                      Image(systemName: "magnifyingglass")
                      
                TextField("Search By id", text: self.$camVM.idName) {
                    self.camVM.search()
                }
                        .foregroundColor(Color.primary)
                          .padding(10)
                      
                      Spacer()
                  }.foregroundColor(.secondary)
                      .background(Color(.secondarySystemBackground))
                      .cornerRadius(10)
                      .padding(10)
            
        }
    }

    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView(searchTerm: .constant(""))
        }
    }
