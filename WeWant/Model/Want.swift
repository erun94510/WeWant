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
}

struct WantList {
    
    static let wantList = [
        Want(name:"교복입고 에버랜드 가기", didu: true, date: "2022-08-17 00:00:00 +0000", image: "IMG001"),
        Want(name:"교복입고 롯데월드 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"한복입고 경복궁 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"아쿠아리움 가기", didu: true, date: "2022-08-17 00:00:00 +0000", image: "IMG002"),
        Want(name:"동물원 가기", didu: true, date: "2022-08-17 00:00:00 +0000", image: "IMG003"),
        Want(name:"전주에서 한복입기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"도시락싸서 소풍가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"일본가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"워터파크 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"계절마다 같은 장소에서 사진찍기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"티모 모자쓰고 사진찍기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"신촌 야경보러 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"경주가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"제주도 한 달 살이(일주일 가능)", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"등산하기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"스키 배우러 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"해외 휴양지 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"미국 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"부산 우리 갔던 코스 그대로 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"커플링 맞추기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"공방 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"포켓볼 치러가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"기차여행", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"제주도 배 타고 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"찜질방 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"피시방 밤샘", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"호캉스 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"쇼핑가서 옷 골라주고 바로 입기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"야구장 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"심야영화 보러가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"사주 보러가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"네컷사진으로 앨범 하나 채우기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"집에서 오빠는 예슬이가 사주는 속옷만 입고 있기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"오빠 앞머리 내린거 보기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"자전거 타기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"남이섬 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"남산타워 가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"연극 보러가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"뮤지컬 보러가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"방탈출 하러가기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"동거하기", didu: false, date: "2022-08-17 00:00:00 +0000", image: ""),
        Want(name:"결혼하기", didu: false, date: "2022-08-17 00:00:00 +0000", image: "")
    ]
}

func getNowTime(date: Date, format: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    dateFormatter.timeZone = NSTimeZone(name: "ko_KR") as TimeZone?
    
    return dateFormatter.string(from: date)
}

