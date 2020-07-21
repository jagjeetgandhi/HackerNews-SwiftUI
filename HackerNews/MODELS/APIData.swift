//
//  APIData.swift
//  HackerNews
//
//  Created by jagjeet on 17/07/20.
//  Copyright © 2020 jagjeet. All rights reserved.
//

import Foundation

struct News: Decodable {
    let hits: [Post]
}  

struct Post: Decodable,Identifiable{
    var id:String {
        return objectID
    }
    let title:String
    let points:Int
    let url:String?
    let objectID:String
}
