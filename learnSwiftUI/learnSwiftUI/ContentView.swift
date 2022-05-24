//
//  ContentView.swift
//  learnSwiftUI
//
//  Created by 方小新 on 2022/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView().ignoresSafeArea().frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                
                HStack {
                    Text("Joshua Tree National Park .")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(Color.gray)
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                 Text("Descriptive text goes here.")
            
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
