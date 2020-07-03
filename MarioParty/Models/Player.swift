//
//  Player.swift
//  MarioParty
//
//  Created by haya on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation

struct Player {
    var name : String
    func bgName () -> String {
        return name + "BG"
    }
    func musicName() -> String {
        return name + ".mp3"
    }
    func momentName() -> String {
        return name + "moment.mp3"
    }

}


let players : [Player] = [

Player(name: "Homer"),

Player(name: "Bart"),
Player(name: "Lisa"),
Player(name: "Maggie"),
Player(name: "Marge")
]
