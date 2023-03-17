//
//  ViewController.swift
//  Custom table view
//
//  Created by HARSHID PATEL on 08/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    var color = ["Gray & Orange","Black","White & Blue","Purple","White","Gray","Green","Goldan","Red & White"]
    var number = [1,2,3,4,5,6,7,8,9]
    var photo = [UIImage(named: "Gray & Orange"),UIImage(named: "Black"),UIImage(named: "White & Blue"),UIImage(named: "Purple"),UIImage(named: "White"),UIImage(named: "Gray"),UIImage(named: "Green"),UIImage(named: "Goldan"),UIImage(named: "Red & White")]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lb2.text = color[indexPath.row]
       cell.lb1.text = "\(number[indexPath.row])"
        cell.img.image = photo[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(number: number[indexPath.row], name: color[indexPath.row], photo: photo[indexPath.row]!)
    }
    
    func navigation(number:Int,name:String,photo:UIImage){
        let nevigate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        nevigate.number = number
        nevigate.name =  name
        nevigate.photo = photo
        navigationController?.pushViewController(nevigate, animated: true)
    }


}

