//
//  ViewController.swift
//  CatBuilderSwift
//
//  Created by Kasia McLellan on 1/5/19.
//  Copyright © 2019 KatherineMclellan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var nameLabel: UILabel!
    private let smoothieCat = Cat(name: "Smoothie") //Age defaults to 0
    private var melkaCat: Cat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let whiteCoffeeCat = Cat(name: "White Coffee Cat", age:6)
        var smoothie = UIImage(named: "Image")
        var smoothieImageView = UIImageView(image: smoothie)
        smoothieCat.celebrateBirthday()
        whiteCoffeeCat.meow()
        melkaCat = Cat(name: "Melka", age: 3)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        nameLabel.text = smoothieCat.name
        printMelkaCat()
        //Never use ! in your code, only permissable in IBOutlet
    }
    
    private func printMelkaCat(){
        guard let melkaCat = melkaCat else {return}
        print(melkaCat.name)
        }

}

// MARK: - Cat class (should be in seperate file)
final class Cat {
    
    // MARK: Public Properties
    let name: String
    private(set) var age: Int //Publically visible, but can only be set privately
    
    var ageInHumanYears: Int {
        return age * 8 // A custom getter
    }
    
    // MARK: Initialization
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    // MARK: Public Action Methods
    func celebrateBirthday() {
        age += 1
    }
    
    func meow() {
        print("MEOWWWW")
    }
}
