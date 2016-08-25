//
//  ViewController.swift
//  swiftMapLocation
//
//  Created by ifsp on 19/08/16.
//  Copyright © 2016 IFSP. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate{

    @IBOutlet weak var theMapView: MKMapView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitute: CLLocationSpeed = 48.399193
        let longitude: CLLocationDegrees = 9.993341
        let latDelta: CLLocationDegrees = 0.01
        let longDelta: CLLocationDegrees = 0.01
        
        let theSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let churchLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitute, longitude)
        
        let theRegion: MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        let theUimMinisterAnnotation = MKPointAnnotation()
        
        theUimMinisterAnnotation.coordinate = churchLocation
        theUimMinisterAnnotation.title = "UIm Minister"
        theUimMinisterAnnotation.subtitle = "A famous church in Germany"
        self.theMapView.addAnnotation(theUimMinisterAnnotation)
        	
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any res dfgfdgources that can be recreated.
    }


}

