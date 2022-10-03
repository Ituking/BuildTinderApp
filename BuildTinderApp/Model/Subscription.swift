//
//  Subscription.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/03.
//

import Foundation

struct Subscription: Identifiable {
    let id = UUID()
    
    var month: Int
    var monthlyCost: Double
    var totalCost: Double
    var savePercent: Int?
    var tagLine: TagLine = .none
    
    enum TagLine: String {
        case MostPopular = "MOST POPULAR"
        case BestValue = "BEST VALUE"
        case none
    }
}

extension Subscription {
    static let example1 = Subscription(
        month: 6,
        monthlyCost: 15.00,
        totalCost: 89.99
    )
}
