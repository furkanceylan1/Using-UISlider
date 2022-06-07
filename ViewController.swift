//
//  ViewController.swift
//  Using UISlider
//
//  Created by Furkan Ceylan on 8.06.2022.
//

import UIKit

class ViewController: UIViewController {

    let slider = UISlider()
    let resultLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        slider.minimumValue = 10.0
        slider.maximumValue = 30.0
        slider.minimumValueImage = UIImage(systemName: "pause")
        slider.maximumValueImage = UIImage(systemName: "pause.fill")
        slider.value = 1.0
        slider.minimumTrackTintColor = .systemYellow
        slider.maximumTrackTintColor = .systemBlue
        slider.thumbTintColor = .systemGray
        slider.frame = CGRect(x: width * 0.5 - (width * 0.9 / 2), y: height * 0.1 - 5, width: width * 0.9, height: 30)
        slider.addTarget(self, action: #selector(ViewController.sliderDidSlidee), for: UIControl.Event.valueChanged)
        view.addSubview(slider)
        
        resultLabel.text = ""
        resultLabel.textAlignment = .center
        resultLabel.numberOfLines = 2
        resultLabel.textColor = .black
        resultLabel.frame = CGRect(x: width * 0.5 - (width * 0.8 / 2), y: height * 0.5 - 27 , width: width * 0.8, height: 54)
        view.addSubview(resultLabel)
    }

    @objc func sliderDidSlidee(){
        let value = slider.value
        resultLabel.text = "\(value)"
    }



}

