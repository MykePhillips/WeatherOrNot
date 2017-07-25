//
//  Constants.swift
//  WeatherOrNot
//
//  Created by Myke on 25/07/2017.
//  Copyright © 2017 Myke. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"

let LATITUDE = "lat="
let LOGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "53ec1e895d029809e44b4ccc42d3da39"

typealias DownloadComplete = () -> ()

let CURRENT_WATHER_URL = "\(BASE_URL)\(LATITUDE)51.463902\(LOGITUDE)-0.167742\(APP_ID)\(API_KEY)"



