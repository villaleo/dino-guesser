//
//  DetailViewController.swift
//  DinoGuesser
//
//  Created by Leonardo Villalobos on 1/31/23.
//

import UIKit

var detailViewCtrlSegueName: String = "detailedView"

class DetailViewController: UIViewController {
    var dinosaur: Dinosaur?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // NOTE: Debugging
        if let someDinosaur: Dinosaur = dinosaur {
            print(someDinosaur.name)
        }
    }
}
