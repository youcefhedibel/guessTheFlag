//
//  ContentView.swift
//  Guess the flaf
//
//  Created by mac on 23/8/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Button("button 1"){ }
                .buttonStyle(.bordered)
            Button("button 2", role: .destructive){ }
                .buttonStyle(.bordered)
            Button("button 3", role: .cancel){ }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("button 4", role: .destructive){ }
                .buttonStyle(.borderedProminent)
            
            Button {
                print("you clicked me !")
            } label: {
                Text("tap me")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    
            }
            Button {
                print("sam3Likooom")
            } label: {
                Label("edit", systemImage: "pencil")
            }
            
    } .ignoresSafeArea()
}
    func executeDelete (){
        print("tatattaa")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
