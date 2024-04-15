//
//  Articles.swift
//  NewsApp
//
//  Created by Александр Майко on 14.04.2024.
//
import Foundation

struct NewsResponse: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]
}

struct Article: Codable {
    let title: String?
    let description: String?
    let author: String?
    let urlToImage: String?
    let publishedAt: Date // ДОЛЖНА БЫТЬ DATE
    let source: Source
}

struct SourcesResponse: Codable {
    let status: String
    let sources: [Source]
}

struct Source: Codable {
    let id: String?
    let name: String?
    let description: String?
    let country: String?
    let category: String?
    let url: String?
}
