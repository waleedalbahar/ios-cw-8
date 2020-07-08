//
//  weatherDetails.swift
//  iOSClaswork8
//
//  Created by Safeyah on 6/14/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit

class weatherDetails: UIViewController {
    var city: City!
    
    @IBOutlet weak var remarkablePlaceImageVIew: UIImageView!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var minTemp: UILabel!
    
    
    @IBOutlet weak var maxTemp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityNameLabel.text = city.name
        getWeatherDetails()
        remarkablePlaceImageVIew.image = city.remarkablePlaceImage()
        
    }
    
    
    func getWeatherDetails() {
       
        Weather().requestWeatherFor(city: city.name) { (forcast) in
            
            let tempInK = forcast!.main.temp
            let tempInC = Int((tempInK - 272.15).rounded())
            self.currentTemp.text = "\(tempInC)°"
            
            
            let mintempK = forcast!.main.temp_min
            let mintempC = (mintempK - 272.15).rounded(.down)
             self.minTemp.text = "\(mintempC)°C"
            
            
            let maxtempK = forcast!.main.temp_max
            let maxtempC = (maxtempK - 272.15).rounded(.down)
            self.maxTemp.text = "\(maxtempC)°C"
            
        }
    }
    
}







