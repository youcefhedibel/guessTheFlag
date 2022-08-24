//
//  ContentView.swift
//  Guess the flaf
//
//  Created by mac on 23/8/2022.
//

import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia","France","Germany","Ireland","Italy","Monaco","Nigeria","Poland","Russia","Spain","UK","US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack{
             LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
            VStack(spacing : 30){
               VStack{
                        Text("Flag of")
                        Text(countries[correctAnswer])
               }.font(.system(size: 35))
               .foregroundColor(.white)
                    ForEach(0..<3){
                        number in Button {
                            
                } label: {
                    Image(countries[number])
                        .renderingMode(.original)
                }
                    }
            }
        }.ignoresSafeArea()
        
        
            

        }
       
     
            
         
            }
           
            
    

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
