//
//  DetailView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/15.
//

import SwiftUI

struct DetailView: View {
    
    var wantName: [Want] = WantList.wantList
    
    var body: some View {
        NavigationView {
            Text("TEST")
            
        }
        .navigationTitle(Text("HI"))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
