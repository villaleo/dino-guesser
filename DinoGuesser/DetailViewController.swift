//
//  DetailViewController.swift
//  DinoGuesser
//
//  Created by Leonardo Villalobos on 1/31/23.
//

import UIKit

class DetailViewController: UIViewController {
    var dinosaur: Dinosaur?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let someDinosaur: Dinosaur = dinosaur {
            print(someDinosaur.name)
        }
    }
}
