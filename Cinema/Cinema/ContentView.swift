//
//  ContentView.swift
//  Cinema
//
//  Created by LXY on 3/22/20.
//  Copyright © 2020 LXY. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        TabView{
            ShowMovies(showAll: true)
            .tabItem{
                Image(systemName: "film")
                Text("WHATS ON")
            }
            ShowFavourites()
                .tabItem{
                    Image(systemName: "star")
                    Text("FAVOURITES")
            }
            Text("abc")
                .tabItem{
                    Image(systemName: "person")
                    Text("MEMBER")
            }
            Text("abc")
                .tabItem{
                    Image(systemName: "gear")
                    Text("SETTINGS")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



