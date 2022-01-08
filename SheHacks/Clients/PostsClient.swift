//
//  SwiftUIView.swift
//  SheHacks
//
//  Created by Jas Lamba on 2022-01-07.
//

import Foundation

class PostsClient: ObservableObject {
    
    @Published var posts = [Post]()
    
    func getData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session  = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print("tuna \(error)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}

