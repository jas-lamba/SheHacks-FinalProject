//
//  PostDataModel.swift
//  SheHacks
//
//  Created by Jas Lamba on 2022-01-07.
//

import Foundation

struct Results: Decodable {
    var hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    var title: String
    var url: String?
    var points: Int
    var objectID: String
}
