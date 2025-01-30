//
//  CollectionViewController.swift
//  ClassmateAppGruper
//
//  Created by MICHAEL GRUPER on 1/28/25.
//

import UIKit

var blankStudent = Classmate()
class CollectionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return students.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if component == 0{
                blankStudent = students[row]
            }
        }

   
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        blankStudent = students[0]
        // Do any additional setup after loading the view.
    }
    

   

}
