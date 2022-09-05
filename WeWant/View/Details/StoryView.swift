//
//  StoryyView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/09/03.
//

import SwiftUI

struct StoryView: View {
    
    @State var want: Want
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            Form {
                Section("") {
                    HStack {
                        Text("Title : ")
                        Spacer()
                        Text(want.name)
                    }
                    HStack {
                        Text("Date : ")
                        Spacer()
                        Text(want.date)
                    }
                }
                Section("") {
                    Image(want.image)
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .cornerRadius(10)
                }
                Section("Memo") {
                    Text(want.memo)
                        .multilineTextAlignment(.leading)
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

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(want: WantList.wantList.first!)
    }
}
