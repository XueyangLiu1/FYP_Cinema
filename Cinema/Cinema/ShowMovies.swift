//
//  ShowMovies.swift
//  Cinema
//
//  Created by LXY on 3/26/20.
//  Copyright © 2020 LXY. All rights reserved.
//

import SwiftUI

struct ShowMovies: View {
    
    //show all or just favourites? this bool determines it
    
    var body: some View {
        GeometryReader{ geometryProxy in
            NavigationView{
                List{
                    ForEach(1...10,id: \.self){num in
                        ZStack{
                            HStack{
                                Image((num%2==0) ? "2001" : "alien")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 150, height: 220)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                    .shadow(color: .black, radius: 2)
                                
                                VStack(alignment: .leading,spacing: 20){
                                    Spacer()
                                    Text("Name:")
                                    Text("Starring:")
                                    Text("Description:")
                                    Text("Ratings")
                                    Spacer()
                                }
                                Spacer()
                            }
                            NavigationLink(destination: Text("placeholder")){
                                EmptyView()
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                .navigationBarTitle("Movies")
            }
        }
        
    }
    

}

struct ShowMovies_Previews: PreviewProvider {
    static var previews: some View {
        ShowMovies()
    }
}
