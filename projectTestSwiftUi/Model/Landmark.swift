//
//  Landmark.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/5/23.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var State: String
    var description: String

    private var imageName: String

    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
