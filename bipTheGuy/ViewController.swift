//
//  ViewController.swift
//  bipTheGuy
//
//  Created by Joseph Marasco on 9/15/19.
//  Copyright © 2019 Joseph Marasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: Functions
    func animateImage(){
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        // shrink our image to punch by 60 pixels
        self.imageToPunch.bounds = CGRect.init(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: CGFloat(self.imageToPunch.bounds.size.width - shrinkValue))
        // animation and return to size
        UIView.animate(withDuration: 0.25
            , delay: 0.0
            , usingSpringWithDamping: 0.2
            , initialSpringVelocity: 10
            , options:[], animations: {self.imageToPunch.bounds = bounds
        }, completion: nil)
    }
    
    

    // MARK: Actions
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: Any) {
        animateImage()
    }
    
    
    
}

