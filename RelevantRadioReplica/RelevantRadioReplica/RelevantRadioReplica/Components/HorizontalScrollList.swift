//
//  HorizontalScrollListItem.swift
//  RelevantRadioReplica
//
//  A horizontal, scrolling list.
//  Change the type parameter in the preview to "shows" or "prayers"
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct HorizontalScrollList: View {
    
    @State var items:[ScrollableItem] = [ScrollableItem]()
    @State var heading: String = ""
    var dataService = DataService()
    var type: String
    
    
    var body: some View {
        
        // The entire element
        VStack {
            // Heading text
            HStack {
                Text(heading)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
            }
            
            // The scrollable list with buttons
            ScrollView (.horizontal, showsIndicators: false){
                HStack {
                    Rectangle()
                        .frame(width: 5, height: 0)
                    ForEach(items) { item in
                        // Button component
                        HorizontalScrollButton(item: item)
                        
                    }
                }
            }
            
            // 'VIEW ALL' button
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Text("VIEW ALL")
                        .font(.subheadline)
                        .foregroundStyle(Color(red: 0.114, green: 0.545, blue: 0.231))
                        .bold()
                        .padding(.trailing)
                        .padding(.top, 5)
                }

            }
            
            
        }
        .onAppear {
            //Determine the type of list via the 'type' property
            if type == "shows" {
                items = dataService.getShows()
                heading = "Shows and Podcasts"
            } else if type == "best" {
                items = dataService.getBest()
                heading = "Today's Best"
            } else if type == "prayers" {
                items = dataService.getPrayers()
                heading = "Audio Prayers"
            }
            
        }
    }
}

#Preview {
    HorizontalScrollList(type: "best")
}
