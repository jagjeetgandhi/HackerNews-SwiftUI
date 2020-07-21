//
//  ContentView.swift
//  HackerNews
//
//  Created by jagjeet on 17/07/20.
//  Copyright © 2020 jagjeet. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var network = Networking()
    var body: some View {
    
        NavigationView {
        List(network.posts){ post in
            NavigationLink(destination:description(url:post.url)){
                HStack {
                Text(String(post.points))
                Text(post.title)
                
                }
            }
            
            
        }
        .navigationBarTitle("HACKER NEWS ")
            
        }
    
        
    
        .onAppear {
            self.network.fetchData()
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone XR")
    }
}



