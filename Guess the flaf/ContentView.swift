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
       
            
            Button("TEST"){
                showingAlert = true
            }.font(.system(size: 40))
            .alert("this is alert message", isPresented: $showingAlert){
                Button("OK"){
                    
                }
            }
           
            
    
}
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
