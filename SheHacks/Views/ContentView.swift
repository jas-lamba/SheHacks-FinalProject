//
//  ContentView.swift
//  SheHacks
//
//  Created by Jas Lamba on 2022-01-07.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var postClient = PostsClient()
    
    var body: some View {
        NavigationView {
            List(postClient.posts) { post in
                NavigationLink(destination: DetailedView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("SheHacks News")
        }
        .onAppear {
            self.postClient.getData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: 1, title: "Hello!"),
//    Post(id: 2, title: "beautiful!"),
//    Post(id: 3, title: "world!")
//]
