//
//  weatherCell.swift
//  rainyshinycloudy
//
//  Created by Raikhan Khassenova on 28/04/2017.
//  Copyright © 2017 Raikhan Khassenova. All rights reserved.
//

import UIKit

class weatherCell: UITableViewCell {
    
    @IBOutlet weak var lowTempLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var dayOfTheWeek: UILabel!
    @IBOutlet weak var weatherMiniImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(forecast: Forecast){
        lowTempLabel.text = forecast.lowTemp
        highTempLabel.text = forecast.highTemp
        weatherTypeLabel.text = forecast.weatherType
        dayOfTheWeek.text = forecast.date
        weatherMiniImage.image = UIImage(named: forecast.weatherType)
    }
    
}
