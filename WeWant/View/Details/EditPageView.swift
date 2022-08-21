//
//  EditView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/19.
//

import SwiftUI

struct EditPageView: View {
    
    @State var want: Want
    //    @State var editname: String = ""
    
    var body: some View {
        ZStack{
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
                    //                DatePicker("Date", selection: $want.date)
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
            }
        }
        .toolbar {
            EditButton()
        }
    }
}

//func EditButton() {
//    
//}

struct EditPageView_Previews: PreviewProvider {
    static var previews: some View {
        EditPageView(want: WantList.wantList.first!)
    }
}
