//
//  quenView.swift
//  Lime Drop
//
//  Created by Marshall Jones on 1/29/23.
//

import SwiftUI

struct quenView: View {
    var body: some View {
        ZStack{
            Image("background-cloth") //relative to name in Preview Assets
                            .resizable() //makes it stay within the bounds of 100% screen
                            
            Text("queen")
        }

    }
}

struct quenView_Previews: PreviewProvider {
    static var previews: some View {
        quenView()
    }
}
