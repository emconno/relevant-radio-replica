//
//  NowPlayingCard.swift
//  RelevantRadioReplica
//
//  A hard-coded example of the LISTEN LIVE button
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct NowPlayingCard: View {
    var body: some View {
        Button {
            // Action
        } label: {
            
            HStack {
                // Image
                Image("drew-mariani")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                    .cornerRadius(10)
                
                // Text
                VStack {
                    HStack {
                        Text("LISTEN LIVE")
                            .font(.subheadline)
                        Spacer()
                    }
                    
                        
                    HStack {
                        Text("Virtue in the Social Age")
                            .bold()
                        Spacer()
                    }
                    
                }
                
                // Play icon
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Spacer()
            }
            .foregroundStyle(.white)
            .padding(10)
            

        }
        .background(Color(red: 0.153, green: 0.314, blue: 0.518))
        .cornerRadius(10)
    }
}

#Preview {
    NowPlayingCard()
}
