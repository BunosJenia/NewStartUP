//
//  ViewController.swift
//  NewStartUP
//
//  Created by Yauheni Bunas on 5/13/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ideas = ["Travel Blog", "Apartment Rentals", "Antiques Dealer", "Art Gallery", "Boat Tours", "Coin or Stamp Dealer", "Coffee Bar", "Craft Beer Pub", "Golf Coach", "Ice Cream Shop", "Night Club", "Wine Bar", "Dance Instructor", "House Cleaning", "Soap and Lotion Making", "Car Resale", "Hat Making Business", "Life Coaching"]
    
    let persons = ["Rich People", "Cats", "Alpacas", "Students", "Book Lovers", "Zombies", "Swimmers", "Superheroes", "Dragons", "Doctors"]
    
    @IBOutlet var answerIdeaLabel: UILabel!
    @IBOutlet var answerPersorLabel: UILabel!
    @IBOutlet var shakeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateStartUp()
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateStartUp()
    }
    
    private func generateStartUp() {
        print(ideas.count)
        print(persons.count)
        
        let randomIdea = Int.random(in: 0..<ideas.count)
        let randomPerson = Int.random(in: 0..<persons.count)
        
        answerIdeaLabel.text = ideas[randomIdea]
        answerPersorLabel.text = persons[randomPerson]
    }

}

