//
//  Gyms.swift
//  BeFit
//
//  Created by Student1 on 10/10/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit
import MapKit
class Gyms: UIViewController, UISearchBarDelegate
{
    
    @IBOutlet var myMap: MKMapView!
    
    @IBAction func searchBtn(_ sender: AnyObject)
    {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        UIApplication.shared.beginIgnoringInteractionEvents()
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        activityIndicator.center = self.view.center
        activityIndicator.color = UIColor.blue
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        self.view.addSubview(activityIndicator)
        
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        let searchRequest = MKLocalSearchRequest()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        let activeSearch = MKLocalSearch(request: searchRequest)
        
        activeSearch.start{ (response, error) in
            if response == nil{
                print("ERRORR")
            }
            else{
                activityIndicator.stopAnimating()
                UIApplication.shared.endIgnoringInteractionEvents()
                let annotations = self.myMap.annotations
                self.myMap.removeAnnotations(annotations)
                
                let latitude = response?.boundingRegion.center.latitude
                let longitude = response?.boundingRegion.center.longitude
                
                let annotation = MKPointAnnotation()
                annotation.title = searchBar.text
                annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitude!)
                self.myMap.addAnnotation(annotation)
                
                let coordinate: CLLocationCoordinate2D =  CLLocationCoordinate2DMake(latitude!,longitude!)
                let span = MKCoordinateSpanMake(0.1, 0.1)
                let region = MKCoordinateRegionMake(coordinate, span)
                self.myMap.setRegion(region, animated: true)
            }
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    

}
