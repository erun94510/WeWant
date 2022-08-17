//
//  DetailView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/15.
//

import SwiftUI

struct DetailView: View {
    
    @State var want: Want
    
    var body: some View {
        NavigationView {
            Form {
                Section("Title") {
                    Toggle(isOn: $want.didu){
                        Text("Done")
                    }
                    Text(want.name)
                }
                
                Section("Do With") {
                    Text("홍길동")
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
