//
//  nextViewController.swift
//  machinetest1(Q2)
//
//  Created by Student P_04 on 17/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class nextViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var array1 = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    @IBOutlet weak var prize: UILabel!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = array1[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.textLabel?.text == "mathsbook"
        {
            prize.text = String(300)
        }
        else if cell?.textLabel?.text == "sciencebook "
        {
            prize.text = String(200)
        }
        
        else if cell?.textLabel?.text == "englishbook"
        {
            prize.text = String(400)
        }
        
        else
        {
            prize.text = String(600)
        
        }
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
