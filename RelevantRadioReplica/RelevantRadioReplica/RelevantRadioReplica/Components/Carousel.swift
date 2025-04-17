//
//  SwiftUIView.swift
//  RelevantRadioReplica
//
//  An image carousel
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct Carousel: View {
    
    @State var items:[CarouselItem] = [CarouselItem]()
    var dataService = DataService()
    
    var body: some View {
        // Carousel
        TabView {
            
            ForEach(items) { item in
                CarouselCard(title: item.title, imageName: item.imageName)
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .frame(height: 270)
        .onAppear {
            items = dataService.getCarouselItems()
        }
        
        HStack {
            
            // Three dots
            HStack{
                Circle()
                Circle()
                Circle()
            }
            .foregroundStyle(.gray)
            .frame(width: 40)
            .padding(.leading, 10)
            .padding(.trailing, 10)
           
            Spacer()
            
            // 'VIEW ALL' button
            Button {
                
            } label: {
                HStack {
                    Text("VIEW ALL")
                    Image(systemName: "newspaper.fill")
                }
                
                    .font(.subheadline)
                    .foregroundStyle(Color(red: 0.114, green: 0.545, blue: 0.231))
                    .bold()
                    .padding(.trailing)
            }

        }
    }
}

#Preview {
    Carousel()
}
