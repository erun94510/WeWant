//
//  EditView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/19.
//

import SwiftUI

struct EditPageView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State var isNavigationBarHidden: Bool = true
    @State var want: Want
    
    var body: some View {
        NavigationView {
            ZStack {
                Form {
                    Section("") {
                        Toggle(isOn: $want.didu) {
                            Text("완료")
                        }
                    }
                    Section("") {
                        HStack {
                            Text("Want")
                            Spacer(minLength: 50)
                            TextField("", text: $want.name)
                        }
                        HStack {
                            Text("Date")
                            Spacer(minLength: 50)
                            TextField("", text: $want.date)
                        }
                    }
                    Section("") {
                        if want.image != "" {
                            Image(want.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            HStack{
                                Image(systemName: "plus.circle")
                                Text("add picture")
                            }
                            .foregroundColor(.blue)
                        }else {
                            HStack{
                                Image(systemName: "plus.circle")
                                Text("add picture")
                            }
                            .foregroundColor(.blue)
                        }
                        
                    }
                    Section("Memo") {
                        TextEditor(text: $want.memo)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", role: .cancel) {
                        dismiss()
                    }
                }
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct EditPageView_Previews: PreviewProvider {
    static var previews: some View {
        EditPageView(want: WantList.wantList.first!)
    }
}
