//
//  SettingsView.swift
//  WeWant
//
//  Created by Donghoon Bae on 2022/08/10.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isLock: Bool = false
    var body: some View {
        NavigationView{
            Form {
                Section("Account") {
                    HStack {
                        Text("ID : ")
                        Spacer()
                        Text("erun9414")
                    }
                    Text("Configure Account")
                        .foregroundColor(.blue)
                }
                
                Section("") {
                    HStack {
                        Image(systemName: "lock")
                        Toggle("App Lock", isOn: $isLock)
                    }
                }
                
                Section("ABOUT") {
                    NavigationLink(destination: LicenseView(), label: {
                        HStack{
                            Image(systemName: "info.circle")
                            Text("LICENSE")
                        }
                    })
                }
            }
            .navigationTitle("Settings")
        }
        
    }
}


struct LicenseView: View {
    var body: some View {
        Form {
            Section("") {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("1.0.0")
                }
            }
            Section("License") {
                HStack {
                    Text("E-Mail")
                    Spacer()
                    Text("erun9414@gmail.com")
                }
                HStack {
                    Text("GITHUB")
                    Spacer()
                    Text("https://github.com/erun94510")
                }
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
