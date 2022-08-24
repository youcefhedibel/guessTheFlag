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
        ZStack {
            RadialGradient( stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)],
                center: .top, startRadius: 200, endRadius: 700
            )
            VStack{
                Text("Guess the Flag")
                    .font(.largeTitle.bold()).foregroundColor(.white)
            VStack(spacing : 20){
               VStack{
                   Text("tap the Flag of").font(.subheadline.weight(.heavy)).foregroundStyle(.secondary)
                   Text(countries[correctAnswer]).font(.largeTitle.weight(.semibold)).foregroundColor(.white)
                }
               
                    
                    ForEach(0..<3){
                        number in Button {
                            flagTapped(number)
                } label: {
                    Image(countries[number])
                        .renderingMode(.original)
                        .clipShape(Capsule())
                        .shadow(radius: 10)
                }
                    }
            }   .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("Score : \(score) points").font(.title.bold()).foregroundColor(.white)
                
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
            .previewInterfaceOrientation(.portrait)
    }
}
