//
//  QuizViewController.swift
//  ClassmateAppGruper
//
//  Created by MICHAEL GRUPER on 10/4/24.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var nameDisplayOutlet: UILabel!
    
    @IBOutlet weak var correctLabelOutlet: UILabel!
    @IBOutlet weak var pointsLabelOutlet: UILabel!
    @IBOutlet weak var nicknameTextFieldOutlet: UITextField!
    var count = 0
    var points = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        nameDisplayOutlet.text = students[count].name
        pointsLabelOutlet.text = "Points: 0"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        var bool = false
        if nicknameTextFieldOutlet.text != ""{
            bool = true
        }
        
        if bool{
            if nicknameTextFieldOutlet.text! == students[count].nickname{
                correctLabelOutlet.text = "Correct!"
                points += 1
                pointsLabelOutlet.text = "Points: \(points)"
            }
            else{
                correctLabelOutlet.text = "Incorrect!"
                pointsLabelOutlet.text = "Points: \(points)"
            }
            count += 1
            if count >= students.count{
                count = 0
                points = 0
                pointsLabelOutlet.text = "Points: \(points)"
            }
            nameDisplayOutlet.text = students[count].name
        }
        else{
            correctLabelOutlet.text = "Invalid Entry!"
        }
    }
    
    
}
