//
//  WeWantView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/09.
//

import SwiftUI

class Todoes: ObservableObject {
    @Published var todoes: [String]

    init() {
        self.todoes = [
            "aaa",
            "bbb",
            "ccc"
        ]
    }
}

struct SearchBar: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Search", text: $text)
                    .foregroundColor(.primary)
                
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""}) {
                        }
                } else {
                    EmptyView()
                }
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
        }
        .padding(.horizontal)
    }
}

struct DetailView: View {
    
    @State private var todolists = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("INFO")) {
                    TextField("TODOLIST", text: $todolists)
                }
            }
        }
        .navigationTitle(Text("\(todolists)"))
    }
}

struct EditView: View {
    
    var body: some View {
        Text("EditView")
    }
}


struct WeWantView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                SearchBar(text: $searchText)
                List {
                    ForEach(Todoes().todoes.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
                        searchText in NavigationLink(searchText, destination: DetailView())
                    }
                    
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("WeWant")
            .toolbar {
                EditButton()
            }
        }
        
    }
}

struct WeWantView_Previews: PreviewProvider {
    static var previews: some View {
        WeWantView()
    }
}
