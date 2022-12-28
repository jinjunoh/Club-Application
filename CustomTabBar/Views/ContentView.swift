//
//  ContentView.swift
//  CustomTabBar
//
//  Created by JJ Oh on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        VStack {
            
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
            
            
            
            if selectedTab == .home{
                    HomeView()
            }
            if selectedTab == .add{
                    AddView()
            }
            if selectedTab == .calendar{
                    CalendarView()
            }
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
            
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
