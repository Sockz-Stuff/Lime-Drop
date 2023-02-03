//
//  ContentView.swift
//  Lime Drop
//
//  Created by Marshall Jones on 1/22/23.
// 
//

import SwiftUI

struct ContentView: View {
    
    @State private var rand1 = 2
    @State private var rand2 = 2
    
    @State private var scoreP = 0
    @State private var scoreC = 0
    
    
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
                    Image("card" + String(rand1)) //calls the image "card<rand1>"
                    Spacer()
                    Image("card" + String(rand2))
                    Spacer()
                }
                 
                
                Spacer()
                

                Button (action: {
                
                    //randomize the state properties
                    self.rand1 = Int.random(in: 2...14)
                    self.rand2 = Int.random(in: 2...14)
                    
                    if(rand1 > rand2){
                        scoreC+=1
                    }
                    else if(rand1 < rand2){
                        scoreP+=1
                    }
            
                    
                }) {
                    Image("button").renderingMode(.original)
                }.buttonStyle(PlainButtonStyle())

                
                Spacer()
                
                HStack{ //same as Vstack but HZ
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10.0)
                        Text(String(scoreC))
                            .font(.largeTitle)
                    }
                    
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10.0) //padding example
                            
                        Text(String(scoreP))
                            .font(.largeTitle)
                    }
                    
                }
                .foregroundColor(.white) //applies to the above view container and all relevant elements within the container
                .font(.headline)
                
                Spacer()
            }
            
        }
        
        //test test test
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")
    }
}
