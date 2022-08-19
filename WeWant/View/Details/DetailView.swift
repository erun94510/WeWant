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
                    HStack {
                        Text("Done?")
                        Spacer()
                        if want.didu == true {
                            Text("YES")
                        } else {
                            Text("Not Yet")
                        }
                    }
                    
                    //                    Toggle(isOn: $want.didu) {
                    //                        Text("Done")
                    //                    }
                    Text(want.name)
                }
                
                Section("Do With") {
                    Text("홍길동")
                }
                
            }
        }
        //        .toolbar {
        //            Button {
        //                EditPageView(want: want)
        //                Text("수정")
        //            }
        //            NavigationLink(destination: EditPageView(want: want)) {
        //                Text("수정")
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(want: WantList.wantList.first!)
    }
}
