//
//  InfoViewController.swift
//  ClassmateAppGruper
//
//  Created by MICHAEL GRUPER on 10/2/24.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var displayLabelOutlet: UILabel!
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    @IBOutlet weak var gradeTextFieldOutlet: UITextField!
    @IBOutlet weak var nicknameTextFieldOutlet: UITextField!
    @IBOutlet weak var errorLabelOutlet: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabelOutlet.text = "\(students[count].toString())"

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        count += 1
        if count >= students.count{
            count = 0
        displayLabelOutlet.text = "\(students[count].toString())"
        }
        else{
            displayLabelOutlet.text = "\(students[count].toString())"
        }
    }
    
    @IBAction func sortButtonAction(_ sender: UIButton) {
        students.sort(by: { $0.grade > $1.grade })
    }
    
    @IBAction func addButtonAction(_ sender: UIButton) {
        print("HI")
        var found = false
        if nameTextFieldOutlet.text != "" && gradeTextFieldOutlet.text != "" && nicknameTextFieldOutlet.text != "" {
            if Int(gradeTextFieldOutlet.text!) != nil{
                let i = Classmate(name: nameTextFieldOutlet.text!, grade: Int(gradeTextFieldOutlet.text!) ?? 9, nickname: nicknameTextFieldOutlet.text!)
                for student in students{
                    if i.name == student.name && i.nickname == student.nickname{
                        found = true
                    }
                }
                if found {
                    errorLabelOutlet.isHidden = false
                    errorLabelOutlet.text = "Student already added"
                }
                
                else{
                    students.append(i)
                }

            }
            else{
                errorLabelOutlet.isHidden = false
                errorLabelOutlet.text = "Enter Valid Values"

            }
        }
        else{
            errorLabelOutlet.isHidden = false
            errorLabelOutlet.text = "Enter Valid Values"
        }
    }
    @IBAction func editButtonAction(_ sender: UIButton) {
        var bool = false
        var temp = students[count]
        if nameTextFieldOutlet.text != "" && gradeTextFieldOutlet.text != "" && nicknameTextFieldOutlet.text != "" {
            if Int(gradeTextFieldOutlet.text!) != nil{
                bool = true
            }
            
        }
        
        if bool{
            temp = Classmate(name: nameTextFieldOutlet.text!, grade: Int(gradeTextFieldOutlet.text!) ?? 9, nickname: nicknameTextFieldOutlet.text!)
            students[count] = temp
            displayLabelOutlet.text = students[count].toString()
            errorLabelOutlet.isHidden = true
        }
        
        else{
            errorLabelOutlet.isHidden = false
            errorLabelOutlet.text = "Enter Valid Value"
        }

    }
}
