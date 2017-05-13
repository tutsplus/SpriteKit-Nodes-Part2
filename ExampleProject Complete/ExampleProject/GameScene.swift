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
        
        
        let redSprite = SKSpriteNode(color: .red, size: CGSize(width: 200, height: 200))
        redSprite.anchorPoint = CGPoint(x: 0, y:0)
        redSprite.position = CGPoint(x: size.width/2 - 100, y: size.height - 210)
        addChild(redSprite)
        
        
        let player = SKSpriteNode(imageNamed: "player")
        player.position = CGPoint(x: size.width/2 , y: 300)
        addChild(player)
        
        let enemy1 = SKSpriteNode(imageNamed: "enemy1")
        enemy1.position = CGPoint(x: 100 , y: 300)
        enemy1.xScale = 2
        addChild(enemy1)
        
        
        let enemy2 = SKSpriteNode(imageNamed: "enemy2")
        enemy2.position = CGPoint(x: size.width - 100 , y: 300)
        enemy2.zRotation = 3.14 * 90 / 180
        addChild(enemy2)
        
        
        let circle = SKShapeNode(circleOfRadius: 50)
        circle.strokeColor = SKColor.green
        circle.fillColor = SKColor.blue
        circle.lineWidth = 8
        circle.position = CGPoint(x: size.width/2, y: 400)
        addChild(circle)
        
        let video = SKVideoNode(fileNamed: "video.mov")
        video.position = CGPoint(x: size.width/2,y: 0)
        addChild(video)
        video.play()
        
        
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
