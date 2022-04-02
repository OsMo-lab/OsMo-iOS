//
//  SlideMenu.swift
//  OsMo
//
//  Created by Alexey Sirotkin on 01.04.2022.
//

import SwiftUI

struct SlideMenu: View {
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var show = true
    @Binding var userName : String
    
    var body: some View {
        HStack(spacing:0) {
            VStack (alignment: .leading){
                
                Text(userName)
                    .frame(alignment: .leading)
                    .padding(.all,2)
                
                Button(action: {},
                    label: {
                    Text("Tracker")
                })
                .padding(.all,2)
                
                Divider()
                
                Button(action: {},
                    label: {
                    Text("Map")
                })
                .padding(.all,2)
                
                Divider()
                
                Button(action: {},
                    label: {
                    Text("Settings")
                })
                .padding(.all,2)
                Spacer(minLength: 0)
                
            }
            .opacity(show ? 1 : 0)
            .frame(height: show ? nil : 0)
            .padding(.horizontal,20)
            .padding(.top,edges!.top == 0 ? 15 :edges?.top)
            .padding(.bottom,edges!.bottom == 0 ? 15 : edges?.bottom)
            .frame(width: UIScreen.main.bounds.width - 90)
            .background(Color.black)
            //.ignoresSafeArea(.all, edges: .vertical)
            Spacer(minLength: 0)
        }
        //.background(Color.black.opacity(0.5)).ignoresSafeArea(.all, edges: .vertical)
        
    }
}


struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu(userName: .constant("test"))
    }
}
