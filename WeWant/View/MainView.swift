//
//  MainView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/10.
//

import SwiftUI

struct MainView: View {
    
//    @Environment(\.colorScheme) var scheme
    var body: some View {
        ZStack{
            TabView{
                WeWantView()
//                    .background(scheme == .dark ? Color.black : Color.white)
//                    .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 0, y: 5)
                    .tabItem {
                        Image(systemName: "heart.text.square")
                        Text("WeWant")
                    }
                WeHaveView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("WeHave")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "")
                        Text("Setting")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
