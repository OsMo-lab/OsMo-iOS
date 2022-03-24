//
//  ContentView.swift
//  Shared
//
//  Created by Alexey Sirotkin on 21.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var userName = "username"
    @State private var messageOfTheDay = "MOTD https://osmo.mobi"
    @State private var isTracking = false
    @State private var isConnected = true
    
    var body: some View {
            VStack(spacing: 0) {
                HStack {
                    Button() {
                    } label : {
                        Image("menu")
                    }
                    .padding(.all,6)
                    Spacer()
                }
                

                Rectangle()
                    .frame(maxWidth: .infinity,minHeight: 3, maxHeight: 3)
                    .foregroundColor(
                        isConnected ? .green : (isTracking ? .yellow : .red)
                    )
                
                Text(userName)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.top,.bottom],0)
                
                HStack {
                    Button("Start") {
                        isTracking = !isTracking
                    }
                    .disabled(isTracking)
                    .foregroundColor(isTracking ? .gray : .white)
                    .buttonStyle(RoundedButtonStyle(backgroundColor: .green))
                    
                    Button("Stop") {
                        isTracking = !isTracking
                    }
                    .disabled(!isTracking)
                    .foregroundColor(!isTracking ? .gray : .white)
                    .buttonStyle(RoundedButtonStyle(backgroundColor: .red))
                }
                

                Text("Message of the Day:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                
                Text(LocalizedStringKey(messageOfTheDay))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .tint(.orange)
                    .font(.body)
                    
                
                Button(action: {},
                       label: {
                    Text("SOS").font(.title.weight(.bold))
                })
                    .buttonStyle(RoundedButtonStyle(backgroundColor: .gray))
                
                Spacer()
            }
            //.padding([.top,.bottom],1)
            .foregroundColor(.white)
            .background(.black)
            .ignoresSafeArea( edges: .top)
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
