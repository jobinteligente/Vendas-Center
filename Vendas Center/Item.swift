//
//  Item.swift
//  Vendas Center
//
//  Created by Anderson Job on 24/04/24.
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
