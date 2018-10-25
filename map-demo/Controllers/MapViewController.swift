//
//  ViewController.swift
//  map-demo
//
//  Created by Elle Gover on 10/21/18.
//  Copyright © 2018 com.detroitlabs. All rights reserved.
//

import UIKit
import Mapbox

class MapViewController: UIViewController, MGLMapViewDelegate {

    // MARK: - Properties
    
    var mapView = MGLMapView()
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createMap()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /// hide navigation bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    // MARK: - Methods
    
    /// TODO: Write createMap method to instantiate mapView
    func createMap() {
        
        /// set url to equal the style URL we will be using
        let url = URL(string: "mapbox://styles/ellegover/cjnnabtvs05kr2soaj4myj037")
        /// set the MGLMapView bounds to equal our view's bounds, and our url
        mapView = MGLMapView(frame: view.bounds, styleURL: url)
        /// set mapView view to equal flexible height and width (to allow for zooming)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        /// set the map's center, zoomLevel, animation
        mapView.setCenter(CLLocationCoordinate2D(latitude: 42.380, longitude: -83.070), zoomLevel: 9.57, animated: false)
        /// add a subview to your view controller (which is our mapView)
        view.addSubview(mapView)
        /// set the mapView's delegate
        mapView.delegate = self
    }
    
}

