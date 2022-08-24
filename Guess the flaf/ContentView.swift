//
//  ContentView.swift
//  Guess the flaf
//
//  Created by mac on 23/8/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var countries = ["Estonia","France","Germany","Ireland","Italy","Monaco","Nigeria","Poland","Russia","Spain","UK","US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
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
                            flagTapped(number)
                } label: {
                    Image(countries[number])
                        .renderingMode(.original)
                }
                    }
            }
            
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
            
        }
        .ignoresSafeArea()

        }
    func flagTapped(_ number : Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score+=1
        } else{
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
  
         
            }
           

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
