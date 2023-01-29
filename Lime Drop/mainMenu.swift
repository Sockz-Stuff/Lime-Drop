//
//  mainMenu.swift
//  Lime Drop
//
//  Created by Marshall Jones on 1/29/23.
//

import SwiftUI

struct mainMenu: View {
    var body: some View {
        TabView{
            quenView()
                .tabItem{
                    Label("My Pantry", systemImage: "house")
                }
            aceView()
                .tabItem{
                    Label("Add/Remove", systemImage: "plusminus")
                }
            jackView()
                .tabItem{
                    Label("Recipe Generator", systemImage: "fork.knife")
                }
            
        }
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
