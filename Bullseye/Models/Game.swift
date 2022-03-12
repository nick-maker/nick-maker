//
//  Game.swift
//  Bullseye
//
//  Created by LKT on 2021/7/21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(sliderValue - target)
    }
}
