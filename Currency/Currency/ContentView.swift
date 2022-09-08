//
//  ContentView.swift
//  Currency
//
//  Created by Macbook Air on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var money = ""
    
    var body: some View {
        VStack{
            Text("محول العملات العجيب")
                .font(.largeTitle)
                .fontWeight(.bold)
                .background(.blue.opacity(0.4))
                .cornerRadius(20)
                .padding(.vertical)
                Spacer()
            
        TextField ("العملة بالدينار", text: $money)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.gray.opacity(0.4).cornerRadius(20))
                .font(.headline)
                .foregroundColor(.blue)
            
            
            

                Spacer()
                VStack{
                    
              
                    HStack{
                        Image("usa.svg")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 90, height: 70)
                       .cornerRadius(30)
                       Text(" $\(String((Double(money) ?? 0) * 3.28))")
                            
                    }
                    HStack{
                      Image("uk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 70)
                        .cornerRadius(30)
                        Text(" £\(String((Double(money) ?? 0) * 2.46))")
                       
                    }
                    HStack{
                        Image("europe")
                          .resizable()
                          .scaledToFit()
                          .frame(width: 90, height: 70)
                          .cornerRadius(30)
                        Text(" €\(String((Double(money) ?? 0) * 2.70))")
                    }
            }
            
            Spacer()
            Image("images")
                .cornerRadius(20)
                .shadow(color: .gray, radius:20, x: 20, y: 30)
                .padding()
         
            
    
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
