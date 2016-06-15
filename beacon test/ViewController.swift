//
//  ViewController.swift
//  beacon test
//
//  Created by George Gogarten on 6/15/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    let locationManager = CLLocationManager()
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(uuidString:"B9407F30-F5F8-466E-AFF9-25556B57FE6D")! as UUID, identifier: "Estimotes")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.delegate = self
        
        if (CLLocationManager.authorizationStatus() != CLAuthorizationStatus.authorizedWhenInUse) {
        
            locationManager.requestWhenInUseAuthorization()
        
        }
        
        locationManager.startRangingBeacons(in: region)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [AnyObject], in region: CLBeaconRegion) {
        print(beacons)
    }

}

