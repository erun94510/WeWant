//
//  WeHaveView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/10.
//

import SwiftUI

struct WeHaveView: View {
    
    var wants: [Want] = WantList.wantList
    @State private var searchText = ""
    @State private var isHidden: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                SearchBar(text: $searchText, isHidden: $isHidden)
                List {
                    ForEach(wants.filter({searchText.isEmpty ? true : $0.name.contains(searchText) }), id: \.id) { want in
                        if want.didu == true {
                            NavigationLink(destination: StoryView(want: want)) {
                                CardView(want: want)
                            }
//                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            .navigationTitle("WeHave")
            .toolbar {
                EditButton()
            }
            
        }
    }
    
}


struct WeHaveView_Previews: PreviewProvider {
    static var previews: some View {
        WeHaveView()
    }
}
