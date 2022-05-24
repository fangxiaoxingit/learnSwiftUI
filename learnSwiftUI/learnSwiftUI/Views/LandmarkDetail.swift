//
//  LandmarkDetail.swift
//  learnSwiftUI
//
//  Created by 方小新 on 2022/5/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges:.top)
                .frame(height: 200)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(Color.gray)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                    .padding(.bottom, 5.0)
                Text(landmark.description)
            
            }.padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
