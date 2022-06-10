//
//  ViewController.swift
//  SB3.1
//
//  Created by andrew on 7.04.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!{
        didSet {
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let celsiumTemp = Int(round(slider.value))
        celsiusLabel.text = ("\(celsiumTemp)ºC")
        let farenheitTemp = Int(round(slider.value) * 1.8 + 32)
        farenheitLabel.text = ("\(farenheitTemp)ºF")
    }
}




