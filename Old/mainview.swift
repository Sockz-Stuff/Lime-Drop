//
//  mainview.swift
//  Lime Drop
//
//  Created by Marshall Jones on 1/29/23.
//

import SwiftUI

struct mainview: View {
    @State private var selectedIndex = 1
    
    var body: some View {
        
        TabView(selection: $selectedIndex){
            ContentView()
                .tabItem{
                    Label("Menu", systemImage: "list.dash")
                }
        }
        
        TabView(selection: $selectedIndex){
            secondview()
                .tabItem{
                    Label("Second", systemImage: "square.and.pencil")
                }
        }
        
    }
}

struct mainview_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
            //.environmentObject(secondview())
    }
}
