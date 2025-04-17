//
//  HorizontalScrollButtonItem.swift
//  RelevantRadioReplica
//
//  A button that can be instantiatd with the information found in a ScrollableItem
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct HorizontalScrollButton: View {
    
    var item:ScrollableItem
    
    var body: some View {
        Button {
            // Action
        } label: {
            VStack {
                // Button image
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: item.width, height: item.height)
                    .cornerRadius(10)
                
                // If a caption is provided, it is displayed
                if item.caption != nil {
                    Text(item.caption!)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.black)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .frame(maxWidth: item.width, maxHeight: 42, alignment: .leading)
                        .lineLimit(2)
                }
                
                // If a date is provided, it is displayed
                if item.date != nil {
                    Text(item.date!)
                        .fontWeight(.light)
                        .foregroundStyle(.black)
                        .font(.callout)
                        .frame(maxWidth: item.width, alignment: .leading)
                        .lineLimit(1)
                    
                }
            }
            
        }
    }
}

#Preview {
    HorizontalScrollButton(item: ScrollableItem(imageName: "mary", height: 170, width: 270, caption: "lorem lorem lorem loremloremloremloremloremloremlorem", date: "test"))
}
