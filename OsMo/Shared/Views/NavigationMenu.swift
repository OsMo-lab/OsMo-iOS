//
//  NavigationMenu.swift
//  OsMo
//
//  Created by Alexey Sirotkin on 24.03.2022.
//

import SwiftUI

struct NavigationMenu: View {
    var body: some View {
        List {
            Text("<").onTapGesture {
                print("Hide")
            }
            Text("Tracker").onTapGesture {
                print("Tracker")
            }
            Text("Map").onTapGesture {
                print("Map")
            }
            Text("Profile").onTapGesture {
                print("Profile")
            }
        }
    }
}

struct NavigationMenu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenu()
    }
}
