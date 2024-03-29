//
//  Landmark.swift
//  StartSwiftUI
//
//  Created by SeokHo on 2019/10/08.
//  Copyright © 2019 SeokHo. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Codable, Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var coordinates: Coordinates
    var state: String
    var park: String
    var category: String
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}
struct Coordinates: Codable, Hashable {
    var latitude: Double
    var longitude: Double
}

