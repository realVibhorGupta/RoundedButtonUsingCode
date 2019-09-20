//
//  ViewController.swift
//  RoundedButton
//
//  Created by Vibhor Gupta on 2/16/18.
//  Copyright © 2018 Vibhor Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.

        let button  = UIButton(frame: CGRect(x: 200, y: 600, width: 100, height: 100))

        button.backgroundColor = UIColor.blue
        button.setTitle("Get Started", for: .normal)
        button.tintColor = UIColor.black
        button.layer.cornerRadius = 50.0

        button.addTarget(self, action: #selector(openMainViewController), for: .touchUpInside)
        self.view.addSubview(button)

        let ovalBounds = view.bounds.insetBy(dx: 10, dy: 10)
        let oval = UIBezierPath(ovalIn: ovalBounds)
        let brightRed = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        brightRed.setFill()
        oval.fill()
    }


    @objc private func openMainViewController(){

        print("Get Started")
        let newViewController = NewViewController()
        self.present(newViewController, animated: true, completion: nil)
    }
    


}

