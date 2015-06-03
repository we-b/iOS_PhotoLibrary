//
//  ViewController.swift
//  PhotoLibrary
//
//  Created by 松下慶大 on 2015/06/03.
//  Copyright (c) 2015年 matsushita keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImageView(firstImageView)
        setImageView(secondImageView)
        setImageView(thirdImageView)
        setImageView(fourthImageView)
        setImageView(fifthImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func setImageView(imageView: UIImageView) {
        imageView.layer.borderColor = UIColor.whiteColor().CGColor
        imageView.layer.borderWidth = 1
    }


    @IBAction func tapRandomButton(sender: UIButton) {
        firstImageView.image = UIImage(named: "\(arc4random() % 31 + 1).png")
        secondImageView.image = UIImage(named: "\(arc4random() % 31 + 1).png")
        thirdImageView.image = UIImage(named: "\(arc4random() % 31 + 1).png")
        fourthImageView.image = UIImage(named: "\(arc4random() % 31 + 1).png")
        fifthImageView.image = UIImage(named: "\(arc4random() % 31 + 1).png")
    }

}

