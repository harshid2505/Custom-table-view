//
//  ViewController2.swift
//  Custom table view
//
//  Created by HARSHID PATEL on 09/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var number = Int()
    var name = String()
    var photo = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lb1.text = "\(number)"
        lb2.text = name
        img.image = photo
    }
}
