//
//  ListStore.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/09/05.
//

import Foundation

class ListStore: ObservableObject {
    @Published var list: [DoList]
    
    init() {
        list = [
            DoList(name: "", didu: false, memo: "", didDate: Date.now)
        ]
    }
    
    func insert(name: String, didu: Bool = false, memo: String, didDate: Date! = nil) {
        list.insert(DoList(name: name, didu: didu, memo: memo, didDate: didDate), at: 0)
    }
    
    func update(dolist: DoList?, name: String, didu: Bool, memo: String, didDate: Date) {
        guard let dolist = dolist else {
            return
        }
        dolist.name = name
        dolist.didu = didu
        dolist.memo = memo
        dolist.didDate = didDate
    }
    
    func delete(dolist: DoList) {
        list.removeAll { $0.id == dolist.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
