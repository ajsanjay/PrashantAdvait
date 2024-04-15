//
//  GridModel.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

struct MediaCoverage: Codable, Identifiable {
    let id: String
    let title: String
    let language: String
    let thumbnail: Thumbnail
    let mediaType: Int
    let coverageURL: String
    let publishedAt: String
    let publishedBy: String
    let backupDetails: BackupDetails?
    
    struct Thumbnail: Codable {
        let id: String
        let version: Int
        let domain: String
        let basePath: String
        let key: String
        let qualities: [Int]
        let aspectRatio: Int
    }
    
    struct BackupDetails: Codable {
        let pdfLink: String
        let screenshotURL: String
    }
}
