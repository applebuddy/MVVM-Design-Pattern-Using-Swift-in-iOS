//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by MinKyeongTae on 2022/10/17.
//

import UIKit

class WeatherCell: UITableViewCell {
  
  @IBOutlet weak var cityNameLabel: UILabel!
  @IBOutlet weak var temperatureLabel: UILabel!
  
  func configureCell(_ viewModel: WeatherViewModel) {
    cityNameLabel.text = viewModel.city
    temperatureLabel.text = "\(viewModel.temperature.formatAsDegree())"
  }
}
