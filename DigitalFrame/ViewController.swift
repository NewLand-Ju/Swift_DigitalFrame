//
//  ViewController.swift
//  DigitalFrame
//
//  Created by JuDH on 2018. 1. 11..
//  Copyright © 2018년 JuDH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cuteImages = [UIImage(named:"1.png")!,
                          UIImage(named:"2.png")!,
                          UIImage(named:"3.png")!,
                          UIImage(named:"4.png")!,
                          UIImage(named:"5.png")!,
                          UIImage(named:"6.png")!,
                          UIImage(named:"7.png")!,
                          UIImage(named:"8.jpg")!]
        
        imgView.animationImages = cuteImages
        speedLabel.text = String(format:"%.2f", speedSlider.value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating {
            stopAnimation()
        } else {
            startAnimation()
        }
    }
    
    @IBAction func speedSliderAction(_ sender:Any) {
        startAnimation()
    }
    
    func startAnimation() {
        imgView.animationDuration = TimeInterval(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedLabel.text = String(format:"%.2f", speedSlider.value)
    }
    
    func stopAnimation() {
        imgView.stopAnimating()
        toggleButton.setTitle("Start", for: UIControlState.normal)
    }
}

