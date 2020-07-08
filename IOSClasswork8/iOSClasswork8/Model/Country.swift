//
//  Country.swift
//  iOSClaswork8
//
//  Created by Safeyah on 6/15/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import Foundation
import UIKit

struct City{
    let name : String
    let cardName: String
    
    func cardImage () -> UIImage
    {
        return UIImage(named: cardName)!
    }
       
    
    func remarkablePlaceImage () -> UIImage
    {
        let remarkablePlaceName = "\(name)1"
        return UIImage(named: remarkablePlaceName)!
    }
    
    
}


var cities :[City] = [
    City(name: "الكويت", cardName: "الكويت"),
    City(name: "الرياض", cardName: "الرياض"),
    City(name: "دبي", cardName: "دبي"),
    City(name: "لندن", cardName: "لندن"),
    City(name: "موسكو", cardName: "موسكو")
]
