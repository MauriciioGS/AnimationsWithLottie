//
//  LoaderView.swift
//  Animations
//
//  Created by Proteco on 15/11/22.
//

import UIKit
import Lottie

class LoaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func loadMario(){
        commonInit(anim: "mario")
    }
    
    func loadDragon(){
        commonInit(anim: "dragon")
    }
    
    func loadBalon(){
        commonInit(anim: "soccer")
    }
    
    
    func commonInit(anim: String){
        let animationView = LottieAnimationView(name: anim)
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.center
        animationView.animationSpeed = 0.2
        animationView.contentMode = .scaleAspectFit
        self.addSubview(animationView)
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 280).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 108).isActive = true
    }
}
