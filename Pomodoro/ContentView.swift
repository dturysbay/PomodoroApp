//
//  ContentView.swift
//  Pomodoro
//
//  Created by Dinmukhambet Turysbay on 06.04.2023.
//

import SwiftUI


struct ContentView: View {
    init(){
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    enum TabState {
        case main
        case settings
        case history
    }

    @State private var selectedTab:TabState = .main
    
    var body: some View {
        ZStack{

            TabView(selection: $selectedTab){
                Main()
                    .tabItem{
                        Label("Main",systemImage: "house")
                    }.tag(TabState.main)

                Settings()
                    .tabItem{
                        Label("Settings",systemImage: "gearshape")
                    }.tag(TabState.settings)

                History()
                    .tabItem{
                        Label("History",systemImage: "doc")
                    }.tag(TabState.history)
            }
            .tint(Color.mint)
            .toolbarColorScheme(.light, for: .tabBar)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
