//
//  Article.swift
//  News
//
//  Created by Sepehr Aflatounian on 2021-11-23.
//

import Foundation

struct ArticlesList : Decodable {
    let articles: [Article]
}

struct Article : Decodable{
    let title : String
    let description : String
}
