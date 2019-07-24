//
//  ViewController.swift
//  HomeWork 2.2
//
//  Created by Александр Уткин on 24/07/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redImage: UIView!
    @IBOutlet weak var yellowImage: UIView!
    @IBOutlet weak var greenImage: UIView!
    @IBOutlet weak var nextButton: UIButton!
    let currentAlpha: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //corner
        redImage.layer.cornerRadius    = redImage.frame.width / 2
        yellowImage.layer.cornerRadius = yellowImage.frame.width / 2
        greenImage.layer.cornerRadius  = greenImage.frame.width / 2
        //aplha
        redImage.alpha    = currentAlpha
        yellowImage.alpha = currentAlpha
        greenImage.alpha  = currentAlpha
        //color
        redImage.layer.backgroundColor    = UIColor.red.cgColor
        yellowImage.layer.backgroundColor = UIColor.yellow.cgColor
        greenImage.layer.backgroundColor  = UIColor.green.cgColor
        view.backgroundColor              = UIColor.lightGray
       
    }

    @IBAction func pressNext() {
        nextButton.setTitle("NEXT", for: .normal)
        
        if (redImage.alpha != 1 && yellowImage.alpha != 1 && greenImage.alpha != 1) {
            redImage.alpha    = 1
            yellowImage.alpha = currentAlpha
            greenImage.alpha  = currentAlpha
        } else if (redImage.alpha == 1 && yellowImage.alpha != 1 && greenImage.alpha != 1) {
            redImage.alpha    = currentAlpha
            yellowImage.alpha = 1
            greenImage.alpha  = currentAlpha
        } else if (redImage.alpha != 1 && yellowImage.alpha == 1 && greenImage.alpha != 1) {
            redImage.alpha    = currentAlpha
            yellowImage.alpha = currentAlpha
            greenImage.alpha  = 1
        }else if (redImage.alpha != 1 && yellowImage.alpha != 1 && greenImage.alpha == 1) {
            redImage.alpha    = 1
            yellowImage.alpha = currentAlpha
            greenImage.alpha  = currentAlpha
        }
    }
    
}

