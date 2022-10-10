//
//  Want.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/09.
//

import Foundation
import SwiftUI

struct Want: Identifiable {
    var id = UUID()
    var name: String
    var didu: Bool
    var date: String
    var image: String
    var memo: String
}

struct WantList {
    
    static let wantList = [
        Want(name:"교복입고 에버랜드 가기", didu: true, date: "2022-08-17 00:00:00 +0000", image: "IMG001", memo: "예슬이랑 교복을 입고 에버랜드에 갔다 너무너무 좋았다."),
        Want(name:"교복입고 롯데월드 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "", memo: ""),
        Want(name:"한복입고 경복궁 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "", memo: ""),
        Want(name:"아쿠아리움 가기", didu: true, date: "2022-08-17 00:00:00 +0000", image: "IMG002", memo: ""),
        Want(name:"동물원 가기", didu: true, date: "2022-08-17 00:00:00 +0000", image: "IMG003", memo: ""),
        Want(name:"전주에서 한복입기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "", memo: ""),
        Want(name:"도시락싸서 소풍가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "", memo: ""),
        Want(name:"일본가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "", memo: ""),
        Want(name:"워터파크 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "", memo: ""),
    ]
}

func getNowTime(date: Date, format: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    dateFormatter.timeZone = NSTimeZone(name: "ko_KR") as TimeZone?
    
    return dateFormatter.string(from: date)
}



