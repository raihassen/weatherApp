//
//  Location.swift
//  rainyshinycloudy
//
//  Created by Raikhan Khassenova on 30/04/2017.
//  Copyright © 2017 Raikhan Khassenova. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude:Double!
    
}
