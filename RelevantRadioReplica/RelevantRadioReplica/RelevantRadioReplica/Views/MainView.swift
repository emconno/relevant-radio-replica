//
//  ContentView.swift
//  RelevantRadioReplica
//
//  The starting View
//
//  Created by Emmett Connolly on 4/16/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        Header()
        
        TabView {
            
                HomeView()
                    .tabItem {
                        Label("HOME", systemImage: "house")
                    }

                ExploreView()
                    .tabItem {
                        Label("EXPLORE", systemImage: "magnifyingglass")
                    }

                MenuView()
                    .tabItem {
                        Label("MENU", systemImage: "heart")
                    }

                PrayView()
                    .tabItem {
                        Label("PRAY", systemImage: "figure.run")
                    }
        }
        
    }
}

#Preview {
    MainView()
}
