//
//  Classmate.swift
//  ClassmateAppGruper
//
//  Created by MICHAEL GRUPER on 10/2/24.
//

import Foundation

class Classmate{
    
    var name: String
    var grade: Int
    var nickname: String
    
    init(name: String, grade: Int, nickname: String) {
        self.name = name
        self.grade = grade
        self.nickname = nickname
    }
    
    init(){
        name = "Bob"
        grade = 11
        nickname = "Blank Bob"
    }
    
    func toString() -> String{
        return "Name: \(name)\nGrade: \(grade)\nNickname: \(nickname)"
    }
    
}
