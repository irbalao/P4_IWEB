//
//  Item.swift
//  quiz
//
//  Created by c119 DIT UPM on 22/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
