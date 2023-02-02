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
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var weightKg: UILabel!
    @IBOutlet weak var heightMeters: UILabel!
    @IBOutlet weak var diet: UILabel!
    @IBOutlet weak var era: UILabel!
    @IBOutlet weak var region: UILabel!
    @IBOutlet weak var speedMph: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let some: Dinosaur = dinosaur {
            updateText(&name, to: some.name)
            imageView.image = some.image
            updateText(&type, to: some.type)
            updateText(&weightKg, to: String(some.weight))
            updateText(&heightMeters, to: String(some.height))
            updateText(&diet, to: some.diet)
            updateText(&era, to: some.era)
            updateText(&region, to: some.region)
            updateText(&speedMph, to: String(some.speed))
        }
    }
    
    internal func updateText(_ label: inout UILabel, to: String) { label.text = to }
}
