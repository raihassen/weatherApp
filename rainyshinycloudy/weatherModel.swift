//
//  weatherModel.swift
//  rainyshinycloudy
//
//  Created by Raikhan Khassenova on 28/04/2017.
//  Copyright © 2017 Raikhan Khassenova. All rights reserved.
//

import Foundation
class weatherModel{
    private var _weatherImageName: String!
    private var _dayOfTheWeek: String!
    private var _highTemp: Int!
    private var _lowTemp: Int!
    private var _weatherType: String!
    
    var weatherImageName:String {
        return _weatherImageName
    }
    
    var dayOfTheWeek: String {
        return _dayOfTheWeek
    }
    
    var highTemp: Int {
        return _highTemp
    }
    
    var lowTemp: Int {
        return _lowTemp
    }
    
    var weatherType: String{
        return _weatherType
    }
    
    init(weatherImageName: String, dayOfTheWeek:String, highTemp: Int, lowTemp: Int, weatherType: String) {
        _weatherImageName = weatherImageName
        _dayOfTheWeek = dayOfTheWeek
        _highTemp = highTemp
        _lowTemp = lowTemp
        _weatherType = weatherType
    }
}
