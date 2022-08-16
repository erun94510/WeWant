//
//  DetailView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/15.
//

import SwiftUI

struct DetailView: View {
    
    var want: Want
    @State var isdo = false
    
    var body: some View {
        NavigationView {
            Form {
                Section("Title") {
                    Toggle(isOn: $isdo){
                        Text("Done")
                    }
                    Text(want.name)
                }
                
                Section("Do With") {
                    Text("예슬")
                }
            }
        }
        .toolbar {
            EditButton()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(want: WantList.wantList.first!)
    }
}
