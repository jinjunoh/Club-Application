//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by JJ Oh on 11/11/22.
//

import SwiftUI

enum Tabs: Int{
    case home = 0
    case calendar = 1
    case add = 2
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        HStack {
            
            Button
            {
                // Switch to chats
                selectedTab = .home
                
            } label: {
                
                TabBarButton(buttonText: "Home", imageName: "homekit", isActive: selectedTab == .home)
                    
            }
            //.tint(Color(""))
            
            Button
            {
                selectedTab = .add
            } label: {
                
                VStack (alignment: .center, spacing: 4){
                    Image(systemName:"plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                    
                    Text("Add")
                        .font(Font.caption)
                        
                }
            }
            //.tint(Color(""))
            
            Button
            {
                // Switch to contacts
                selectedTab = .calendar
            } label: {
                
                
                TabBarButton(buttonText: "Calendar", imageName: "calendar", isActive: selectedTab == .calendar)
                
            }
            //.tint(Color(""))
            
        }
        .frame(height:82)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.home))
    }
}
