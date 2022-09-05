//
//  DetailView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/15.
//

import SwiftUI

struct DetailView: View {
    
    @State var want: Want
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            Form {
                Section("Title") {
                    HStack {
                        Text("Do")
                        Spacer()
                        if want.didu == true {
                            Text("Done")
                        } else {
                            Text("Not Done")
                        }
                    }
                    Text(want.name)
                }
                
                Section("Do With") {
                    Text("홍길동")
                }
                
            }
        }
        .toolbar {
            Button(action: {
                isShowingSheet.toggle()
            }) {
                Text("Edit")
            }
            .sheet(isPresented: $isShowingSheet) {
                EditPageView(want: want)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(want: WantList.wantList.first!)
    }
}
