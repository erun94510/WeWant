//
//  WeHaveView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/10.
//

import SwiftUI

struct WeHaveView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                
                List {
                }
                
            }
            .listStyle(PlainListStyle())
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
