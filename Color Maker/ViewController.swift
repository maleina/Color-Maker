//
//  ViewController.swift
//  Color Maker
//
//  Created by Maleina Bidek on 3/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var innerBox: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSlider == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
                
        innerBox.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

