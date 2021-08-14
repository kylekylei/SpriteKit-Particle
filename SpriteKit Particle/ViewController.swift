//
//  ViewController.swift
//  SpriteKit Particle
//
//  Created by Kyle Lei on 2021/8/11.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //gradient
        let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.black.cgColor]
        
        gradientLayer.type = CAGradientLayerType.radial
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        let endY = 0.5 + view.frame.size.width / view.frame.size.height / 2
        gradientLayer.endPoint  = CGPoint(x:1, y: endY)
        gradientView.layer.addSublayer(gradientLayer)
        view.addSubview(gradientView)
        
        //particle
        let skView = SKView(frame: view.frame)
        view.insertSubview(skView, at: 1)
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
        scene.backgroundColor = UIColor.clear
        skView.allowsTransparency = true
        
        //logoImage
        let logoImage = UIImageView(image: UIImage(named: "star-wars"))
        logoImage.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        logoImage.contentMode = .scaleAspectFit
        logoImage.center = gradientView.center
        
        view.addSubview(logoImage)
    }


}

