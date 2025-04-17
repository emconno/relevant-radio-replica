//
//  HomeView.swift
//  RelevantRadioReplica
//
//  View for the "HOME" tab
//
//  Created by Emmett Connolly on 4/17/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            
            NowPlayingCard()
                .padding(10)
            
            Carousel()
            
            HorizontalScrollList(type: "shows")
                .padding(.bottom, 20)
            HorizontalScrollList(type: "best")
                .padding(.bottom, 20)
            HorizontalScrollList(type: "prayers")
                .padding(.bottom, 20)
            
            
        }
    }
}

#Preview {
    HomeView()
}
