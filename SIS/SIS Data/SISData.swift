//
//  SISData.swift
//  SIS
//
//  Created by Bryan Scott on 2/4/20.
//  Copyright © 2020 Bryan Scott. All rights reserved.
//

import SwiftUI

struct EventEntry: Hashable, Identifiable, Codable {
    var id: String = ""
    var name: String
    var to: String
    var timestamp: Int
    var typeId: Int
    var content: Content
}

struct Content: Hashable, Codable {
    var subject: String = ""
    var body: String = ""
}
