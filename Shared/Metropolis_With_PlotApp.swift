//
//  Metropolis_With_PlotApp.swift
//  Shared
//
//  Created by Jeff Terry on 5/7/21.
//

import SwiftUI

@main
struct Metropolis_With_PlotApp: App {
    
    @StateObject var plotDataModel = PlotDataClass(fromLine: true)
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .environmentObject(plotDataModel)
                    .tabItem {
                        Text("Plot")
                    }
                TextView()
                    .environmentObject(plotDataModel)
                    .tabItem {
                        Text("Text")
                    }
                            
                            
            }
            
        }
    }
}
