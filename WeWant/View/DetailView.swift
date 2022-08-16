//
//  DetailView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/15.
//

import SwiftUI

struct DetailView: View {
    
    var want: Want
    
    var body: some View {
        NavigationView {
            Section {
                Text(want.name)
            }

            
        }
        .navigationTitle(Text("HI"))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(want: WantList.wantList.first!)
    }
}
