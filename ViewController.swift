//
//  ViewController.swift
//  machinetest1(Q2)
//
//  Created by Felix ITs 08 on 06/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit
var book = ["mathsbook ","sciencebook ","englishbook ","historybook "]
var array = [String]()


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBAction func next(_ sender: UIButton) {
        
        let next = storyboard?.instantiateViewController(withIdentifier: "nextViewController")as! nextViewController
        next.array1 = array
                navigationController?.pushViewController(next, animated: true)
        
        
    }
    
    
    
    @IBOutlet weak var totallabel: UILabel!

    
    @IBAction func total(_ sender: UIButton) {
        
        totallabel.text = String(200+300+400+600)
        
        
    }
    
    
  

    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
      
        if cell?.accessoryType == .checkmark
        {
            cell?.accessoryType = .none
            let index = array.index(of: cell!.textLabel!.text!)
            array.remove(at: index!)
            
        }
        else
        {
            
            
            cell?.accessoryType = .checkmark
           array.append((cell?.textLabel?.text!)!)
            
        }
            }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return book.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
       cell.textLabel?.text = book[indexPath.row]
       
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

