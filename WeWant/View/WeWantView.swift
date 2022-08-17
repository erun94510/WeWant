//
//  WeWantView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/09.
//

import SwiftUI

struct EditView: View {
    
    var body: some View {
        Text("EditView")
    }
}

struct WeWantView: View {
    
    var wants: [Want] = WantList.wantList
    @State private var searchText = ""
    @State private var isHidden: Bool = false
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                SearchBar(text: $searchText, isHidden: $isHidden)
                List {
                    ForEach(wants.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) }), id: \.id) { want in
                        NavigationLink(destination: DetailView(want: want), label: {
                            Text(want.name)
                        }
                        )
                    }
                }
            }
            .navigationTitle("WeWant")
            .toolbar {
                EditButton()
            }
            
        }
    }
    
}
struct WeWantView_Previews: PreviewProvider {
    static var previews: some View {
        WeWantView()
    }
}
