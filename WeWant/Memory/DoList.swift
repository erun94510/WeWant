//
//  DoList.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/09/05.
//

import Foundation
import SwiftUI

class DoList: Identifiable, ObservableObject {
    let id: UUID
    @Published var name: String
    @Published var didu: Bool
    @Published var memo: String
    @Published var didDate: Date
    
    init(name: String, didu: Bool = false, memo: String, didDate: Date = Date.now) {
        id = UUID()
        self.name = name
        self.didDate = didDate
        self.didu = didu
        self.memo = memo
    }
}
