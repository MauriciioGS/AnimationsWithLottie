//
//  ViewController.swift
//  Animations
//
//  Created by Proteco on 14/11/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet var segmtdControl: UISegmentedControl!
    var anim: LoaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anim = LoaderView()
        segmtdControl.selectedSegmentIndex = 0
    }
    
    @IBAction func animDidChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            anim.loadMario()
            anim.frame.size = CGSize(width: 400, height: 400)
            anim.center = self.view.center
            view.addSubview(anim)
        case 1:
            anim.loadDragon()
            anim.frame.size = CGSize(width: 400, height: 400)
            anim.center = self.view.center
            view.addSubview(anim)
        case 2:
            anim.loadBalon()
            anim.frame.size = CGSize(width: 400, height: 400)
            anim.center = self.view.center
            view.addSubview(anim)
        default:
            break
        }
    }


}

