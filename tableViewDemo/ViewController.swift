//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Khushbu on 27/06/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tblview: UITableView!
    var array1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH"]
    var array2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh"]
    
   // var arrimg = UIImage(imageLiteralResourceName: "c1")
 var arrimg = [#imageLiteral(resourceName: "c8"), #imageLiteral(resourceName: "c2"), #imageLiteral(resourceName: "c5"), #imageLiteral(resourceName: "c7"), #imageLiteral(resourceName: "c3"), #imageLiteral(resourceName: "c4"), #imageLiteral(resourceName: "c8"), #imageLiteral(resourceName: "c1")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        cell.img.image = arrimg[indexPath.row]
        return cell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = array1[indexPath.row]
//        cell.detailTextLabel?.text = array2[indexPath.row]
//        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strlbl1 = array1[indexPath.row]
        detail.strlbl2 = array2[indexPath.row]
        detail.strimg = arrimg[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated:true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arrimg.remove(at: indexPath.row)
            tblview.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

