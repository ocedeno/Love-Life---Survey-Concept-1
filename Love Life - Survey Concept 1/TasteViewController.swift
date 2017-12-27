//
//  TasteViewController.swift
//  Love Life - Survey Concept 1
//
//  Created by Octavio Cedeno on 12/27/17.
//  Copyright © 2017 Cedeno Enterprise, Inc. All rights reserved.
//

import UIKit

class TasteViewController: UIViewController
{
    @IBOutlet weak var sectionOneScore: UILabel!
    @IBOutlet weak var sectionTwoScore: UILabel!
    @IBOutlet weak var sectionThreeScore: UILabel!
    @IBOutlet weak var sectionFourScore: UILabel!
    @IBOutlet weak var imageSelectionOne: UIButton!
    @IBOutlet weak var imageSelectionTwo: UIButton!
    @IBOutlet weak var imageSelectionThree: UIButton!
    @IBOutlet weak var imageSelectionFour: UIButton!
    @IBOutlet weak var imageSelectionFive: UIButton!
    @IBOutlet weak var actionButton: UIButton!
    
    static var placementArray = [String]()
    static var userOneRespones = [String]()
    static var userTwoResponses = [String]()
    static var userOneIsActive: Bool = true
    
    let paint1 = UIImage(named: "painting1")!
    let paint2 = UIImage(named: "painting2")!
    let paint3 = UIImage(named: "painting3")!
    let paint4 = UIImage(named: "painting4")!
    let paint5 = UIImage(named: "painting5")!
    
    let color1 = UIImage(named: "color1")!
    let color2 = UIImage(named: "color2")!
    let color3 = UIImage(named: "color3")!
    let color4 = UIImage(named: "color4")!
    let color5 = UIImage(named: "color5")!
    
    let shape1 = UIImage(named: "shape1")!
    let shape2 = UIImage(named: "shape2")!
    let shape3 = UIImage(named: "shape3")!
    let shape4 = UIImage(named: "shape4")!
    let shape5 = UIImage(named: "shape5")!
    
    let landscape1 = UIImage(named: "landscape1")!
    let landscape2 = UIImage(named: "landscape2")!
    let landscape3 = UIImage(named: "landscape3")!
    let landscape4 = UIImage(named: "landscape4")!
    let landscape5 = UIImage(named: "landscape5")!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setupImageSelectionView()
    }
    
    @IBAction func buttonSelected()
    {
        guard self.actionButton.currentTitle == "User 1 Select" || self.actionButton.currentTitle == "User 2 Select" else
        {
            self.sectionOneScore.text = "0"
            self.sectionTwoScore.text = "0"
            self.sectionThreeScore.text = "0"
            self.sectionFourScore.text = "0"
            
            DispatchQueue.main.async {
                self.actionButton.setTitle("Next", for: .normal)
            }
            
            self.setupImageSelectionView()
            
            return dismiss(animated: true, completion: nil)
        }
        
        guard TasteViewController.placementArray.contains("5") else
        {
            let alert = UIAlertController(title: "Complete Survey", message: "You have not finished this section. Make sure you have selected all 5 images in order of your preference.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
            return self.present(alert, animated: true, completion: nil)
        }
        
        self.imageSelectionOne.isEnabled = true
        self.imageSelectionTwo.isEnabled = true
        self.imageSelectionThree.isEnabled = true
        self.imageSelectionFour.isEnabled = true
        self.imageSelectionFive.isEnabled = true
        
        switch self.imageSelectionOne.currentBackgroundImage!
        {
        case UIImage(named: "landscape1")!:
            
            TasteViewController.placementArray.removeAll()
            
            DispatchQueue.main.async {
                self.imageSelectionOne.alpha = 1
                self.imageSelectionTwo.alpha = 1
                self.imageSelectionThree.alpha = 1
                self.imageSelectionFour.alpha = 1
                self.imageSelectionFive.alpha = 1
                
                self.imageSelectionOne.setBackgroundImage(self.paint1, for: .normal)
                self.imageSelectionTwo.setBackgroundImage(self.paint2, for: .normal)
                self.imageSelectionThree.setBackgroundImage(self.paint3, for: .normal)
                self.imageSelectionFour.setBackgroundImage(self.paint4, for: .normal)
                self.imageSelectionFive.setBackgroundImage(self.paint5, for: .normal)
                
                self.imageSelectionOne.setTitle("", for: .normal)
                self.imageSelectionTwo.setTitle("", for: .normal)
                self.imageSelectionThree.setTitle("", for: .normal)
                self.imageSelectionFour.setTitle("", for: .normal)
                self.imageSelectionFive.setTitle("", for: .normal)
            }
        case UIImage(named: "painting1")!:
            
            TasteViewController.placementArray.removeAll()
            
            DispatchQueue.main.async {
                self.imageSelectionOne.alpha = 1
                self.imageSelectionTwo.alpha = 1
                self.imageSelectionThree.alpha = 1
                self.imageSelectionFour.alpha = 1
                self.imageSelectionFive.alpha = 1
                
                self.imageSelectionOne.setBackgroundImage(self.color1, for: .normal)
                self.imageSelectionTwo.setBackgroundImage(self.color2, for: .normal)
                self.imageSelectionThree.setBackgroundImage(self.color3, for: .normal)
                self.imageSelectionFour.setBackgroundImage(self.color4, for: .normal)
                self.imageSelectionFive.setBackgroundImage(self.color5, for: .normal)
                
                self.imageSelectionOne.setTitle("", for: .normal)
                self.imageSelectionTwo.setTitle("", for: .normal)
                self.imageSelectionThree.setTitle("", for: .normal)
                self.imageSelectionFour.setTitle("", for: .normal)
                self.imageSelectionFive.setTitle("", for: .normal)
            }
        case UIImage(named: "color1")!:
            
            TasteViewController.placementArray.removeAll()
            
            DispatchQueue.main.async {
                self.imageSelectionOne.alpha = 1
                self.imageSelectionTwo.alpha = 1
                self.imageSelectionThree.alpha = 1
                self.imageSelectionFour.alpha = 1
                self.imageSelectionFive.alpha = 1
                
                self.imageSelectionOne.setBackgroundImage(self.shape1, for: .normal)
                self.imageSelectionTwo.setBackgroundImage(self.shape2, for: .normal)
                self.imageSelectionThree.setBackgroundImage(self.shape3, for: .normal)
                self.imageSelectionFour.setBackgroundImage(self.shape4, for: .normal)
                self.imageSelectionFive.setBackgroundImage(self.shape5, for: .normal)
                
                self.imageSelectionOne.setTitle("", for: .normal)
                self.imageSelectionTwo.setTitle("", for: .normal)
                self.imageSelectionThree.setTitle("", for: .normal)
                self.imageSelectionFour.setTitle("", for: .normal)
                self.imageSelectionFive.setTitle("", for: .normal)
            }
        case UIImage(named: "shape1")!:
            
            TasteViewController.placementArray.removeAll()
            
            if TasteViewController.userOneIsActive
            {
                self.actionButton.setTitle("User 2 Select", for: .normal)
                TasteViewController.userOneIsActive = false
            }
            else
            {
                let x = getPoints()
                DispatchQueue.main.async {
                    self.actionButton.setTitle("\(x) pts - Move On", for: .normal)
                }
                MainViewController.tasteScore = x
                TasteViewController.userOneIsActive = true
            }
            
            DispatchQueue.main.async {
                self.imageSelectionOne.alpha = 1
                self.imageSelectionTwo.alpha = 1
                self.imageSelectionThree.alpha = 1
                self.imageSelectionFour.alpha = 1
                self.imageSelectionFive.alpha = 1
                
                self.imageSelectionOne.setBackgroundImage(self.landscape1, for: .normal)
                self.imageSelectionTwo.setBackgroundImage(self.landscape2, for: .normal)
                self.imageSelectionThree.setBackgroundImage(self.landscape3, for: .normal)
                self.imageSelectionFour.setBackgroundImage(self.landscape4, for: .normal)
                self.imageSelectionFive.setBackgroundImage(self.landscape5, for: .normal)
                
                self.imageSelectionOne.setTitle("", for: .normal)
                self.imageSelectionTwo.setTitle("", for: .normal)
                self.imageSelectionThree.setTitle("", for: .normal)
                self.imageSelectionFour.setTitle("", for: .normal)
                self.imageSelectionFive.setTitle("", for: .normal)
            }
        default:
            break
        }
    }
    
    @IBAction func makeSelection(sender: UIButton)
    {
        sender.alpha = 0.50
        sender.isEnabled = false
        
        if TasteViewController.userOneIsActive
        {
            let image = sender.currentBackgroundImage!
            if image == landscape1 || image == paint1 || image == color1 || image == shape1
            {
                TasteViewController.userOneRespones.append("A")
            }
            else if image == landscape2 || image == paint2 || image == color2 || image == shape2
            {
                TasteViewController.userOneRespones.append("B")
            }
            else if image == landscape3 || image == paint3 || image == color3 || image == shape3
            {
                TasteViewController.userOneRespones.append("C")
            }
            else if image == landscape4 || image == paint4 || image == color4 || image == shape4
            {
                TasteViewController.userOneRespones.append("D")
            }
            else if image == landscape5 || image == paint5 || image == color5 || image == shape5
            {
                TasteViewController.userOneRespones.append("E")
            }
        }
        else
        {
            let image = sender.currentBackgroundImage!
            if image == landscape1 || image == paint1 || image == color1 || image == shape1
            {
                TasteViewController.userTwoResponses.append("A")
            }
            else if image == landscape2 || image == paint2 || image == color2 || image == shape2
            {
                TasteViewController.userTwoResponses.append("B")
            }
            else if image == landscape3 || image == paint3 || image == color3 || image == shape3
            {
                TasteViewController.userTwoResponses.append("C")
            }
            else if image == landscape4 || image == paint4 || image == color4 || image == shape4
            {
                TasteViewController.userTwoResponses.append("D")
            }
            else if image == landscape5 || image == paint5 || image == color5 || image == shape5
            {
                TasteViewController.userTwoResponses.append("E")
            }
        }
        
        if TasteViewController.placementArray.count == 0
        {
            DispatchQueue.main.async {
                sender.setTitle("1", for: .normal)
                TasteViewController.placementArray.append("1")
            }
        }
        else if TasteViewController.placementArray.contains("1")
        {
            if TasteViewController.placementArray.contains("2")
            {
                if TasteViewController.placementArray.contains("3")
                {
                    if TasteViewController.placementArray.contains("4")
                    {
                        if TasteViewController.placementArray.contains("5")
                        {
                            let alert = UIAlertController(title: "Reset Responses?", message: "Would you like to reset your responses and try again?", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                            alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { (alert) in
                                DispatchQueue.main.async {
                                    self.imageSelectionOne.setTitle("", for: .normal)
                                    self.imageSelectionTwo.setTitle("", for: .normal)
                                    self.imageSelectionThree.setTitle("", for: .normal)
                                    self.imageSelectionFour.setTitle("", for: .normal)
                                    self.imageSelectionFive.setTitle("", for: .normal)
                                }
                                self.actionButton.setTitle("User 1 Select", for: .normal)
                                self.setupImageSelectionView()
                            }))
                            
                            self.present(alert, animated: true, completion: nil)
                        }
                        else
                        {
                            DispatchQueue.main.async {
                                sender.setTitle("5", for: .normal)
                            }
                            TasteViewController.placementArray.append("5")
                        }
                    }
                    else
                    {
                        DispatchQueue.main.async {
                            sender.setTitle("4", for: .normal)
                        }
                        TasteViewController.placementArray.append("4")
                    }
                }
                else
                {
                    DispatchQueue.main.async {
                        sender.setTitle("3", for: .normal)
                    }
                    TasteViewController.placementArray.append("3")
                }
            }
            else
            {
                DispatchQueue.main.async {
                    sender.setTitle("2", for: .normal)
                }
                TasteViewController.placementArray.append("2")
            }
            
        }
    }
    
    func setupImageSelectionView()
    {
        TasteViewController.placementArray.removeAll()
        
        self.imageSelectionOne.isEnabled = true
        self.imageSelectionTwo.isEnabled = true
        self.imageSelectionThree.isEnabled = true
        self.imageSelectionFour.isEnabled = true
        self.imageSelectionFive.isEnabled = true
        
        DispatchQueue.main.async {
            self.imageSelectionOne.setBackgroundImage(self.landscape1, for: .normal)
            self.imageSelectionTwo.setBackgroundImage(self.landscape2, for: .normal)
            self.imageSelectionThree.setBackgroundImage(self.landscape3, for: .normal)
            self.imageSelectionFour.setBackgroundImage(self.landscape4, for: .normal)
            self.imageSelectionFive.setBackgroundImage(self.landscape5, for: .normal)
            
            self.imageSelectionOne.setTitle("", for: .normal)
            self.imageSelectionTwo.setTitle("", for: .normal)
            self.imageSelectionThree.setTitle("", for: .normal)
            self.imageSelectionFour.setTitle("", for: .normal)
            self.imageSelectionFive.setTitle("", for: .normal)
            
            self.imageSelectionOne.alpha = 1
            self.imageSelectionTwo.alpha = 1
            self.imageSelectionThree.alpha = 1
            self.imageSelectionFour.alpha = 1
            self.imageSelectionFive.alpha = 1
            
            self.actionButton.setTitle("User 1 Select", for: .normal)
        }
    }
    
    func getPoints() -> Int
    {
        var totalPoints:Int = 0
        
        let user1GroupA = TasteViewController.userOneRespones[0...4]
        let user1GroupB = TasteViewController.userOneRespones[5...9]
        let user1GroupC = TasteViewController.userOneRespones[10...14]
        let user1GroupD = TasteViewController.userOneRespones[15...19]
        
        let user2GroupA = TasteViewController.userTwoResponses[0...4]
        let user2GroupB = TasteViewController.userTwoResponses[5...9]
        let user2GroupC = TasteViewController.userTwoResponses[10...14]
        let user2GroupD = TasteViewController.userTwoResponses[15...19]
        
        let groupAPoints = self.getPointsMethod(masterArray: user1GroupA, comparerArray: user2GroupA)
        self.sectionOneScore.text = String(groupAPoints)
        
        let groupBPoints = self.getPointsMethod(masterArray: user1GroupB, comparerArray: user2GroupB)
        self.sectionTwoScore.text = String(groupBPoints)
        
        let groupCPoints = self.getPointsMethod(masterArray: user1GroupC, comparerArray: user2GroupC)
        self.sectionThreeScore.text = String(groupCPoints)
        
        let groupDPoints = self.getPointsMethod(masterArray: user1GroupD, comparerArray: user2GroupD)
        self.sectionFourScore.text = String(groupDPoints)
        
        totalPoints = groupAPoints + groupBPoints + groupCPoints + groupDPoints
        
        return totalPoints
    }
    
    func getPointsMethod(masterArray user1Array: ArraySlice<String>, comparerArray user2Array: ArraySlice<String>) -> Int
    {
        var totalPoints:Int = 0
        var tempUser2Array = [String]()
        var tempUser1Array = [String]()
        tempUser1Array = Array(user1Array)
        tempUser2Array = Array(user2Array)
        
        let answer1 = tempUser1Array[0]
        let answer2 = tempUser1Array[1]
        let answer3 = tempUser1Array[2]
        let answer4 = tempUser1Array[3]
        
        let user2_answer1Location = tempUser2Array.index(of: answer1)
        totalPoints += (4 - user2_answer1Location!)
        
        let tempUser2Array1 = tempUser2Array.filter { $0 != answer1 }
        let user2_answer2Location = tempUser2Array1.index(of: answer2)
        totalPoints += (3 - user2_answer2Location!)
        
        let tempUser2Array2 = tempUser2Array1.filter { $0 != answer2 }
        let user2_answer3Location = tempUser2Array2.index(of: answer3)
        totalPoints += (2 - user2_answer3Location!)
        
        let tempUser2Array3 = tempUser2Array2.filter { $0 != answer3 }
        let user2_answer4Location = tempUser2Array3.index(of: answer4)
        totalPoints += (1 - user2_answer4Location!)
        
        return totalPoints
    }
}
