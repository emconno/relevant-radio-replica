//
//  Header.swift
//  RelevantRadioReplica
//
//  The header for the App
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct Header: View {
    var body: some View {
        ZStack {
            
            // Background
            Rectangle()
                .ignoresSafeArea()
                .frame(height: 60)
                .foregroundStyle(Color(red: 0.153, green: 0.314, blue: 0.518, opacity: 0.75))
            
            HStack {
                Spacer()
                
                // Logo
                Image("header-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                
                Spacer()
                
                // Settings button
                Button {
                    // Action
                } label: {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 25)
                        .foregroundStyle(.white)
                        .padding(.trailing, 20)
                    
                }

            }
            
            
        }
    }
}

#Preview {
    Header()
}
