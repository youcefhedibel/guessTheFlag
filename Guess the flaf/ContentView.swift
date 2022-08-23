//
//  ContentView.swift
//  Guess the flaf
//
//  Created by mac on 23/8/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            VStack(spacing: 0){
                Color.red
                   
                Color.blue
            }
          Text("your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
