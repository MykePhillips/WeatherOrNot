//
//  ViewController.swift
//  WeatherOrNot
//
//  Created by Myke on 24/07/2017.
//  Copyright © 2017 Myke. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currenTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWetherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
        currentWeather.downloadWeatherDetails {
            //Code to update UI.
           self.updateMainUI()
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell
    }
    
    func updateMainUI() {
        
       dateLabel.text = currentWeather.date
        currenTempLabel.text = "\(currentWeather._currentTemp!)°"
        currentWetherTypeLabel.text = currentWeather._weatherType
        locationLabel.text = currentWeather._cityName
        currentWeatherImage.image = UIImage(named: currentWeather._weatherType)
        
        
        
    }

}

