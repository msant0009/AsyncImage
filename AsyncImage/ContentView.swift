//
//  ContentView.swift
//  AsyncImage
//
//  Created by Mark Santoro on 8/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                AsyncImage(url: URL(string: "https://plus.unsplash.com/premium_photo-1661940781747-5b4026f9ee1f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!) { image in
                    image.resizable().frame(width: 300,height: 300,alignment: .center)
                } placeholder: {
                    ProgressView()
                }
                
                List(superHeroArray) { superhero in
                    Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                }
                }.navigationTitle(Text("Superhero Book"))
                
            }
        }
    
       
}


#Preview {
    ContentView()
}
