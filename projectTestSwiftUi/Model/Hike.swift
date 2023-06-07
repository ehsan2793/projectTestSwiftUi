//
//  Hike.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/7/23.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observations]

    static var formater = LengthFormatter()

    var distanceText: String {
        Hike.formater
            .string(fromValue: distance, unit: .kilometer)
    }

    struct Observations: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
