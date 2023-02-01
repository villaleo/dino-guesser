//
//  ViewController.swift
//  DinoGuesser
//
//  Created by Leonardo Villalobos on 1/26/23.
//

import UIKit

struct Dinosaur {
    let name: String
    let image: UIImage
    let type: String
    let weight: Double
    let height: Double
    let diet: String
    let era: String
    let region: String
    let speed: Int
}

class ViewController: UIViewController {
    let dinosaurs: [String: Dinosaur] = [
        "Gallimimus": Dinosaur(
            name: "Gallimimus",
            image: UIImage(named: "gallimimus")!,
            type: "ornithomimid",
            weight: 450,
            height: 1.9,
            diet: "Omnivore",
            era: "Late Cretaceous",
            region: "Mongolia",
            speed: 30
        ),
        "Stegosaurus": Dinosaur(
            name: "Stegosaurus",
            image: UIImage(named: "stegosaurus")!,
            type: "stegosaur",
            weight: 4990,
            height: 4.0,
            diet: "Herbivore",
            era: "Late Jurassic",
            region: "North America",
            speed: 10
        ),
        "Tyrannosaurus Rex": Dinosaur(
            name: "Tyrannosaurus Rex",
            image: UIImage(named: "tyrannosaurus")!,
            type: "theropod",
            weight: 7030,
            height: 3.6,
            diet: "Carnivore",
            era: "Jurrasic/Cretaceous",
            region: "North America",
            speed: 15
        ),
        "Brachiosaurus": Dinosaur(
            name: "Brachiosaurus",
            image: UIImage(named: "brachiosaurus")!,
            type: "sauropod",
            weight: 60000,
            height: 12.5,
            diet: "Omnivore",
            era: "Late Jurassic",
            region: "North America",
            speed: 6
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedDinosaur(_ sender: UITapGestureRecognizer) {
        if let component: UIView = sender.view {
            performSegue(withIdentifier: "detailedView", sender: component)
        }
    }
}
