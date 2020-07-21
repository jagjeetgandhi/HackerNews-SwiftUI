//
//  NetworkManager.swift
//  HackerNews
//
//  Created by jagjeet on 17/07/20.
//  Copyright © 2020 jagjeet. All rights reserved.
//

import Foundation

class Networking:ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safedata = data {
                        do {
                            let news = try decoder.decode(News.self,from:safedata)
                            DispatchQueue.main.async {
                                self.posts = news.hits 
                            }
                            
                        }catch {
                            print(error)
                       }
                        
                    }
                }
            }
            task.resume()
        }
    }
}
