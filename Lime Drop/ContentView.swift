//
//  ContentView.swift
//  Lime Drop
//
//  Created by Marshall Jones on 1/22/23.
// 
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack{ //layered elements ontop of one another
            Image("background-cloth") //relative to name in Preview Assets
                .resizable() //makes it stay within the bounds of 100% screen
                .ignoresSafeArea() //allows the image to extend into the unsafe area
            
            VStack{ //vertical assortment of elements, equi distance apart
                //considered a 'View Container'
                
                Spacer() //add or remove these to see how they work
                //basically they push elements evenly within the bounds of space between elements in the stack
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                
                Image("button")
                
                Spacer()
                
                HStack{ //same as Vstack but HZ
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10.0) //padding example
                            
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                }
                .foregroundColor(.white) //applies to the above view container and all relevant elements within the container
                .font(.headline)
                
                Spacer()
            }
            
        }
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")
    }
}
