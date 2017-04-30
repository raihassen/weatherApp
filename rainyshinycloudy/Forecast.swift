//
//  Forecast.swift
//  rainyshinycloudy
//
//  Created by Raikhan Khassenova on 30/04/2017.
//  Copyright © 2017 Raikhan Khassenova. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    
    var date: String {
        if _date == nil{
            _date = ""
        }
        return _date
    }
    
    var weatherType:String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil{
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp:String{
        if _lowTemp == nil{
            _lowTemp = ""
        }
        return _lowTemp
    }
        
    init(weatherDictionary:Dictionary<String, AnyObject>){
        
        if let temp = weatherDictionary["temp"] as? Dictionary<String, AnyObject> {
            
            if let minTemp = temp["min"] as? Double{
                self._lowTemp = String(format: "%.1f", minTemp-273.15) + "°"
                print(self._lowTemp)
            }
            
            if let maxTemp = temp["max"] as? Double {
                self._highTemp = String(format: "%.1f", maxTemp-273.15) + "°"
                print(self._highTemp)
            }
        }
        
        if let weather = weatherDictionary["weather"] as? [Dictionary<String, AnyObject>] {
            if let main = weather[0]["main"] as? String{
                self._weatherType = main
                print(self._weatherType)
            }
        }
        
        if let date = weatherDictionary["dt"] as? Double {
            let unixConvertedDate =  Date(timeIntervalSince1970: TimeInterval(date))
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dateOfTheWeek()
            print(self._date)
        }
    }
    
}

extension Date{
    func dateOfTheWeek() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
