//
//  ContentView.swift
//  M6_L4_Task1
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import SwiftUI

struct ContentView: View {
    init() {
        print(Defaults.loadUser())
        let user = User(firstname: "Bekhruz", lastname: "Hakmirzaev", email: "hakmirzaev@gmail.com", phone: "998930827444", address: "Tashkent")
        Defaults.storeUser(user: user)
        print(Defaults.loadUser())
    }
    var body: some View {
        Text("hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
