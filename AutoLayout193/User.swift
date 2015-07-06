//
//  User.swift
//  AutoLayout193
//
//  Created by qingjiezhao on 7/6/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import Foundation

struct User{
    
    let name:String
    let company:String
    let login:String
    let password:String
    
    static func login(login:String,password:String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    
    static let database:Dictionary<String,User> = {
        var theDatabase = Dictionary<String,User>()
        for user in[
            User(name: "Qing", company: "Syracuse", login: "Qing", password: "Qing1"),
            User(name: "Jie", company: "Syracuse", login: "Jie", password: "Jie1"),
            User(name: "Zhao", company: "Syracuse", login: "Zhao", password: "Zhao1")
            ]{
                theDatabase[user.login] = user
        }
        return theDatabase
    }()
}