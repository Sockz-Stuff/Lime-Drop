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
                    Label("Queen", systemImage: "list.dash")
                }
            aceView()
                .tabItem{
                    Label("Ace", systemImage: "square.and.pencil")
                }
            
        }
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
