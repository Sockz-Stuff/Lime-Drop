//
//  mainMenu.swift
//  Lime Drop
//
//  Created by Marshall Jones on 1/29/23.
//

import SwiftUI
import UIKit

struct mainMenu: View {
    var body: some View {
        
        storyboardview().edgesIgnoringSafeArea(.all)
        
       /* TabView{
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
            
        }*/
        
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}

struct storyboardview: UIViewControllerRepresentable{
    
    func makeUIViewController(context: Context) ->UIViewController{
        let storboard = UIStoryboard(name: "Storyboard", bundle: Bundle.main)
        let controller = storboard.instantiateViewController(identifier: "mainM")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    
}
