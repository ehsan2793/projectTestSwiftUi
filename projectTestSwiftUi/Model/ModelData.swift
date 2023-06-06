//
//  ModelData.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/5/23.
//

import Foundation

var landmarks: [Landmark] = load(filename: "landmarkData.json")

func load<T: Decodable>(filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }

    do {
        data = try Data(contentsOf: file)

    } catch {
        fatalError("Couldn't find \(filename) in main bundle -> \(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't find \(filename) as \(T.self) in main bundle -> \(error)")
    }
}
