//
//  NewScene.swift
//  ExampleProject
//
//  Created by James Tyner on 4/26/17.
//  Copyright © 2017 James Tyner. All rights reserved.
//

import UIKit
import SpriteKit

class NewScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        let goBackLabel = SKLabelNode(text: "Go Back")
        goBackLabel.name = "goback"
        goBackLabel.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(goBackLabel)
     }
    
}
