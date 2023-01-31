//
//  ViewController.swift
//  TrafficLight(HM#2)
//
//  Created by Админ on 30/01/2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var trafficLightYellowView: UIView!
    @IBOutlet var trafficLightRedView: UIView!
    @IBOutlet var trafficLightGreenView: UIView!
    @IBOutlet var buttonNext: UIButton!
    
    var currentTrafficLightView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonNext.layer.cornerRadius = buttonNext.bounds.height / 2
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.bounds.width / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.bounds.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.bounds.height / 2
        trafficLightRedView.alpha = 0.3
        trafficLightYellowView.alpha = 0.3
        trafficLightGreenView.alpha = 0.3
        
        currentTrafficLightView = trafficLightGreenView

    }

    @IBAction func buttonNextChange(_ sender: Any) {
        currentTrafficLightView?.alpha = 0.3

        if currentTrafficLightView == trafficLightRedView {
            currentTrafficLightView = trafficLightYellowView
        } else if currentTrafficLightView == trafficLightYellowView {
            currentTrafficLightView = trafficLightGreenView
        } else {
            currentTrafficLightView = trafficLightRedView
        }

        currentTrafficLightView?.alpha = 1
    }
    
}

