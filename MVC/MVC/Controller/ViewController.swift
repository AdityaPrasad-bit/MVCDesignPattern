//
//  ViewController.swift
//  MVC
//
//  Created by Aditya on 19/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var sno = 0
    @IBOutlet weak var backgroundImage: UIImageView!
    var imageArray:[String] = ["background","background1","background2","background3","background4","background5"]
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == storyBrain.getchoice1(sno: sno){
            sno = storyBrain.getchoice1Destination(sno: sno)
            
        }else if sender.currentTitle == storyBrain.getchoice2(sno: sno){
            sno = storyBrain.getchoice2Destination(sno: sno)
        }
        if sno == 0{
            backgroundImage.image = UIImage(named: imageArray[sno])
        }else{
            backgroundImage.image = UIImage(named: imageArray[sno])
        }
        UpdateUI()
    }
    func UpdateUI(){
        storyLabel.text = storyBrain.getStory(sno: sno)
        choice1Button.setTitle(storyBrain.getchoice1(sno: sno), for: .normal)
        choice2Button.setTitle(storyBrain.getchoice2(sno: sno), for: .normal)
    }
    
}

