//
//  CarouselItem.swift
//  RelevantRadioReplica
//
//  A button that can be instantiated with information found in a CaroselItem
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct CarouselCard: View {
    
    var title:String
    var imageName:String
    
    var body: some View {
        // Align text in bottom left corner with stacks and Spacers
        VStack {
            Spacer()
            HStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.title2)
                    .padding(10)
                    .shadow(radius: 10)
                Spacer()
            }
        }
        .frame(height: 270)
        .background(
            Image(imageName)
                .resizable()
        )
        
        
        
    }
}

#Preview {
    CarouselCard(title: "Sample Text", imageName: "mary")
}
