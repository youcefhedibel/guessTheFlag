//
//  ContentView.swift
//  Guess the flaf
//
//  Created by mac on 23/8/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
       
            
            Button("Show alert"){
                showingAlert = true
            }.font(.system(size: 40))
            .alert("Important message", isPresented: $showingAlert){
                Button("Delete", role: .destructive){}
                Button("Cancel", role: .cancel ){}
            } message: {
                Text("Please read this message")
            }
            }
           
            
    
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
