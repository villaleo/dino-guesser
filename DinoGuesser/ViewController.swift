//
//  ViewController.swift
//  DinoGuesser
//
//  Created by Leonardo Villalobos on 1/26/23.
//

import UIKit

enum DinosaurName: Int {
    case Gallimimus = 0
    case Stegosaurus
    case TyrannosaurusRex
    case Brachiosaurus
}

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
    let dinosaurs: [DinosaurName: Dinosaur] = [
        .Gallimimus: Dinosaur(
            name: "Gallimimus",
            image: UIImage(named: "gallimimus")!,
            type: "Ornithomimid",
            weight: 450,
            height: 1.9,
            diet: "Omnivore",
            era: "Late Cretaceous",
            region: "Mongolia",
            speed: 30
        ),
        .Stegosaurus: Dinosaur(
            name: "Stegosaurus",
            image: UIImage(named: "stegosaurus")!,
            type: "Stegosaur",
            weight: 4990,
            height: 4.0,
            diet: "Herbivore",
            era: "Late Jurassic",
            region: "North America",
            speed: 10
        ),
        .TyrannosaurusRex: Dinosaur(
            name: "Tyrannosaurus Rex",
            image: UIImage(named: "tyrannosaurus")!,
            type: "Theropod",
            weight: 7030,
            height: 3.6,
            diet: "Carnivore",
            era: "Jurrasic/Cretaceous",
            region: "North America",
            speed: 15
        ),
        .Brachiosaurus: Dinosaur(
            name: "Brachiosaurus",
            image: UIImage(named: "brachiosaurus")!,
            type: "Sauropod",
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
            performSegue(withIdentifier: detailViewCtrlSegueName, sender: component)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == detailViewCtrlSegueName,
            let component = sender as? UIView,
            let detailViewCtrl = segue.destination as? DetailViewController {
            
            switch component.tag {
            case DinosaurName.Gallimimus.rawValue:
                detailViewCtrl.dinosaur = dinosaurs[.Gallimimus]
            case DinosaurName.Stegosaurus.rawValue:
                detailViewCtrl.dinosaur = dinosaurs[.Stegosaurus]
            case DinosaurName.TyrannosaurusRex.rawValue:
                detailViewCtrl.dinosaur = dinosaurs[.TyrannosaurusRex]
            case DinosaurName.Brachiosaurus.rawValue:
                detailViewCtrl.dinosaur = dinosaurs[.Brachiosaurus]
            default:
                break
            }
        }
    }
}
