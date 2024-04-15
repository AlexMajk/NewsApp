//
//  APICaller.swift
//  NewsApp
//
//  Created by Александр Майко on 15.04.2024.
//
//
import Alamofire
import Foundation

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=caa57140ca6e4f319feca76b776a4c3c")
    }
    private init () {}
    
    public func getTopStories(complition: @escaping((Result<[String], Error>) -> Void)) {
        guard let url = Constants.topHeadlinesURL else {
            return
        }
        AF.request(url).responseData { response in
            switch response.result {
            case .success:
                guard let data = response.data else { return }
                do {
                    let resultJSON = try APIConstants.jsonDecoder.decode(NewsResponse.self, from: data)
                    print("Articles: \(resultJSON.articles.count) ")
                } catch let jsonErr {
                    print(jsonErr)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}
