//
//  BundleExtension.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 12/12/21.
//

import SwiftUI

extension String: LocalizedError {
    public var errorDescription: String? { return self }
}

extension Bundle {
    enum BundleErrors: String, Error {
        case invalidURL = "The URL is wrong, try again."
        case invalidData = "The Data is wrong, try again."
        case invalidJSON = "The JSON is wrong, try again."
    }
    func decode<T: Decodable>(_ resource: String) throws -> T {
        guard let url = url(forResource: resource, withExtension: nil) else {
            throw BundleErrors.invalidURL.rawValue
        }
        guard let data = try? Data(contentsOf: url) else {
            throw BundleErrors.invalidData.rawValue
        }
        if let decodedData = try? JSONDecoder().decode(T.self, from: data) {
            return decodedData
        } else {
            throw BundleErrors.invalidJSON.rawValue
        }
    }
}
