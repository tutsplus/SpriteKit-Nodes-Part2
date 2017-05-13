//
//  GameScene.swift
//  ExampleProject
//
//  Created by James Tyner on 4/26/17.
//  Copyright © 2017 James Tyner. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    

    override func didMove(to view: SKView) {
        let startGameLabel = SKLabelNode(text: "Start Game")
        startGameLabel.name = "startgame"
        startGameLabel.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(startGameLabel)
    }
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        let touchLocation = touch.location(in: self)
        let touchedNode = self.atPoint(touchLocation)
        
        if(touchedNode.name == "startgame"){
            let newScene = NewScene(size: size)
            newScene.scaleMode = scaleMode
          
            let doorsClose = SKTransition.doorsCloseVertical(withDuration: 2.0)
            view?.presentScene(newScene, transition: doorsClose)
            
        }
    }

}
