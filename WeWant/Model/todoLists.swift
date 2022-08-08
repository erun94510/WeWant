//
//  TodoLists.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/09.
//

import Foundation

class todoLists: ObservableObject {
    @Published var todes = [Todo]()
}

struct Todo: Identifiable {
    var id = UUID()
    var name: String
}

var testTodoes = [
    Todo(name: "TEST1"),
    Todo(name: "TEST@")
]
