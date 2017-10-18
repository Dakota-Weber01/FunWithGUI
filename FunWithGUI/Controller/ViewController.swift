//
//  ViewController.swift
//  FunWithGUI
//
//  Created by Weber, Dakota on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func imageButtonClick() -> Void
    {
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    @IBOutlet weak var Image: UIImageView!
    public var imageCounter : UIImagePickerController
    private func changeImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named:#imageLiteral(resourceName: "Strat"))
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named:#imageLiteral(resourceName: "NewLogo"))
        }
        else
        {
            imageFrame.image = UIImage(named:#imageLiteral(resourceName: "bork"))
        }
        imageCounter += 1
    
    }
    
}



