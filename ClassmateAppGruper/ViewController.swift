//
//  ViewController.swift
//  ClassmateAppGruper
//
//  Created by MICHAEL GRUPER on 10/2/24.
//

    var students = [Classmate]()

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var michael = Classmate(name: "Michael", grade: 11, nickname: "Michael Michael Motorcycle")
        var ryan = Classmate(name: "Ryan Spencer", grade: 11, nickname: "Rainbow Ryan")
        var sean = Classmate(name: "Sean", grade: 11, nickname: "Boat Gone Sean")
        var logan = Classmate(name: "Logan", grade: 11, nickname: "Googball Googan")
        var jayden = Classmate(name: "Jayden", grade: 12, nickname: "Sleepy Sawyer")
        var cam = Classmate(name: "Cam", grade: 12, nickname: "Chef Cam")
        var brennan = Classmate(name: "Brennan", grade: 10, nickname: "Breaking Brennan")
        var evan = Classmate(name: "Evan", grade: 11, nickname: "Fluting Evan")
        var peter = Classmate(name: "Peter", grade: 11, nickname: "Peter Kickle")
        var matthew = Classmate(name: "Matthew", grade: 11, nickname: "Glitch Fitch")
        var daniel = Classmate(name: "Daniel", grade: 11, nickname: "Bananiel")
        var ryan2 = Classmate(name: "Ryan Stark", grade: 11, nickname: "Rat Ryan")
        var eva = Classmate(name: "Eva", grade: 12, nickname: "No Pickel Noftz")
        var ava = Classmate(name: "Ava", grade: 11, nickname: "Abba Ava")
        var justin = Classmate(name: "Justin", grade: 12, nickname: "Wicked Weber")
        var john = Classmate(name: "John", grade: 12, nickname: "Gymmy John")
        
        students.append(michael)
        students.append(ryan)
        students.append(sean)
        students.append(logan)
        students.append(john)
        students.append(jayden)
        students.append(cam)
        students.append(brennan)
        students.append(peter)
        students.append(matthew)
        students.append(daniel)
        students.append(ryan2)
        students.append(eva)
        students.append(evan)
        students.append(ava)
        students.append(justin)
        
    }


}

