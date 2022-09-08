//
//  ContentView.swift
//  Best Track
//
//  Created by Macbook Air on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = "Unknown"
     
    var body: some View {
        
        VStack{
            
        Text("ما هو المسار المفضل لديك؟")
                .font(.title2)
                .padding()
            
        Image (imageName)
                .resizable()
                .scaledToFit()

        Text("IOS")
                .font(.largeTitle)
                .frame(width: 150, height: 50)
                .background(Color.blue)
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                imageName = "Image"
                    
                }
        Text ("Andriod")
                .font(.largeTitle)
                .frame(width: 150, height: 50)
                .background(Color.green)
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                imageName = "And"
                }
        Text("Games dev")
                .font(.largeTitle)
                .frame(width: 200, height: 50)
                .background(Color.purple)
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                imageName = "Game"
                }
            
        Text("Web")
                .font(.largeTitle)
                .frame(width: 100, height: 50)
                .background(Color.mint)
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                imageName = "web"
                }
            

            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
