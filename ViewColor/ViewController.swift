//
//  ViewController.swift
//  ViewColor
//
//  Created by Оксана Попова on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlet
    
    @IBOutlet var meaningRedAlpha: UILabel!
    @IBOutlet var meaningGreenAlpha: UILabel!
    @IBOutlet var meaningBlueAlpha: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    @IBOutlet var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        viewColor.layer.cornerRadius = 20
        
   
    }
    
// MARK: IBAction
    
    @IBAction func customizationAlphaRed(_ sender: UISlider) {
        meaningRedAlpha.text = sliderRed.value.formatted()
        viewColor.backgroundColor = .red
        viewColor.alpha = CGFloat(sliderRed.value)
    }
    
    @IBAction func customizationAlphaGreen(_ sender: UISlider) {
        meaningGreenAlpha.text = sliderGreen.value.formatted()
        viewColor.backgroundColor = .green
        viewColor.alpha = CGFloat(sliderGreen.value)
    }
    
    @IBAction func customizationAlphaBlue(_ sender: UISlider) {
        meaningBlueAlpha.text = sliderBlue.value.formatted()
        viewColor.backgroundColor = .blue
        viewColor.alpha = CGFloat(sliderBlue.value)
    }
    
    
    // MARK: Metods
    private func setupRedSlider() {
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
        sliderRed.maximumTrackTintColor = .gray
        meaningRedAlpha.text = sliderRed.value.formatted()
       
        
    }
    private func setupGreenSlider() {
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
        sliderGreen.maximumTrackTintColor = .gray
        meaningGreenAlpha.text = sliderGreen.value.formatted()
    }
    private func setupBlueSlider() {
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
        sliderBlue.maximumTrackTintColor = .gray
        meaningBlueAlpha.text = sliderBlue.value.formatted()
    }
  
}

