//
//  NewsAPI.swift
//  NewsApp
//
//  Created by Александр Майко on 14.04.2024.
//

import Foundation

//caa57140ca6e4f319feca76b776a4c3c

struct APIConstants {
    // News  API key url: https://newsapi.org
    static let apiKey: String = "caa57140ca6e4f319feca76b776a4c3c"
    
    static let jsonDecoder: JSONDecoder = {
     let jsonDecoder = JSONDecoder()
     jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
     let dateFormatter = DateFormatter()
     dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
     jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
      return jsonDecoder
    }()
    
     static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
}
