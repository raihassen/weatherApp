//
//  Contstants.swift
//  rainyshinycloudy
//
//  Created by Raikhan Khassenova on 28/04/2017.
//  Copyright © 2017 Raikhan Khassenova. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let WEATHER_URL = "weather?"
let LATTITUDE = "lat="
let LONGTITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "42a1771a0b787bf12e734ada0cfc80cb"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(WEATHER_URL)\(LATTITUDE)\(Location.sharedInstance.latitude!)\(LONGTITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

let FORECAST_URL_HELPER = "forecast/daily?"
let NUMBER_OF_DAYS = "&cnt=10"

let FORECAST_URL = "\(BASE_URL)\(FORECAST_URL_HELPER)\(LATTITUDE)\(Location.sharedInstance.latitude!)\(LONGTITUDE)\(Location.sharedInstance.longitude!)\(NUMBER_OF_DAYS)\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()
