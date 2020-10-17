//
//  ViewController.swift
//  rgbColors
//
//  Created by Владислав Сизонов on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var red: Float = 0
    var green: Float = 0
    var blue: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
    }

    func colorViewbackground () {
        colorView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }

    @IBAction func redSliderAction() {

        redLabel.text = String(format: "%.2f", redSlider.value)
        
        red = redSlider.value
        colorViewbackground()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        
        green = greenSlider.value
        colorViewbackground()
    }
    
    @IBAction func blueSliderValue() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        blue = blueSlider.value
        colorViewbackground()
    }
    
}

