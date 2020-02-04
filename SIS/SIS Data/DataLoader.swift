//
//  DataLoader.swift
//  SIS
//
//  Created by Bryan Scott on 2/4/20.
//  Copyright © 2020 Bryan Scott. All rights reserved.
//

import SwiftUI

func loadFromNetwork(_ url: URL, completion: @escaping(_ data: Data) -> Void ) {
    let request = URLRequest(url: url)
    URLSession.shared.dataTask(with: request) { data, response, error in
        if let data = data {
            DispatchQueue.main.async {
                completion(data)
            }
            return
        }
        print("Fetch failed")
    }.resume()
    
}


func parseJSON<T: Decodable>(_ data: Data) -> T {
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse data as \(T.self):\n\(error)")
    }
}
