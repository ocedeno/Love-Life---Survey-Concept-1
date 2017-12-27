//
//  MainViewController.swift
//  Love Life - Survey Concept 1
//
//  Created by Octavio Cedeno on 12/27/17.
//  Copyright © 2017 Cedeno Enterprise, Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController
{
    static var sightScore = 0
    static var smellScore = 0
    static var soundScore = 0
    static var tasteScore = 0
    static var touchScore = 0
    
    @IBOutlet weak var sightButton: UIButton!
    @IBOutlet weak var smellButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var tasteButton: UIButton!
    @IBOutlet weak var touchButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true)
        
        if MainViewController.sightScore != 0
        {
            sightButton.setTitle("Sight - \(MainViewController.sightScore) pts.", for: .normal)
        }
        
        if MainViewController.smellScore != 0
        {
            sightButton.setTitle("Smell - \(MainViewController.smellScore) pts.", for: .normal)
        }
        
        if MainViewController.soundScore != 0
        {
            sightButton.setTitle("Hear - \(MainViewController.sightScore) pts.", for: .normal)
        }
        
        if MainViewController.tasteScore != 0
        {
            sightButton.setTitle("Taste - \(MainViewController.sightScore) pts.", for: .normal)
        }
        
        if MainViewController.touchScore != 0
        {
            sightButton.setTitle("Touch - \(MainViewController.sightScore) pts.", for: .normal)
        }
    }
}
