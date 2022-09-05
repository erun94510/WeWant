//
//  SearchBar.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/15.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    @State private var isEditing = false
    
    @Binding var isHidden: Bool
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Search", text: $text)
                
                    .onTapGesture {
                        self.isEditing = true
                        self.isHidden = true
                    }        .navigationBarHidden(isHidden)
            }
            .padding(7)
            .padding(.leading, 7)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal, 10)
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    self.isHidden = false
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    
                }) {
                    Text("Cancel")
                }
            }
        }
        .padding(7)
        .padding(.trailing, 7)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""), isHidden: .constant(false))
    }
}
