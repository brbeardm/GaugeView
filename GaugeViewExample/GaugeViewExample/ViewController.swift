//
//  ViewController.swift
//  GaugeViewExample
//
//  Created by Piccinato, Mathew on 3/16/16.
//  Copyright © 2016 Piccinato, Mathew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gaugeView: GaugeView?
    @IBOutlet var label: UILabel?
    @IBOutlet var slider: UISlider?
    
    @IBOutlet var decrement: UIButton?
    @IBOutlet var increment: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
       
        self.gaugeView?.stops = [
            (0.0, UIColor.greenColor()),
            (0.25, UIColor.yellowColor()),
            (0.5, UIColor.orangeColor()),
            (0.75, UIColor.redColor())
        ]
        self.setProgress(Double(self.slider!.value))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setProgress(progress: Double) {
        self.gaugeView?.progress = progress
        self.label?.text = String(format: "%.2f", self.gaugeView!.progress)
        self.slider?.setValue(Float(self.gaugeView!.progress), animated: false)
    }

    @IBAction func sliderValueDidChange(sender: UISlider) {
        self.setProgress(Double(sender.value))
    }
    
    @IBAction func decrementValue(sender: UIButton) {
        self.setProgress(self.gaugeView!.progress - 0.1)
    }
    
    @IBAction func incrementValue(sender: UIButton) {
        self.setProgress(self.gaugeView!.progress + 0.1)
    }
}

