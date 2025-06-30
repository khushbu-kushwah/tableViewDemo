//
//  DetailViewController.swift
//  tableViewDemo
//
//  Created by Khushbu on 27/06/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var dimg: UIImageView!
    @IBOutlet weak var dlbl1: UILabel!
    @IBOutlet weak var dlbl2: UILabel!
    
    var strlbl1:String!
    var strlbl2:String!
    var strimg:UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dlbl1.text = strlbl1
        dlbl2.text = strlbl2
        dimg.image = strimg
        
    }

}
