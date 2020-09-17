//
//  ViewController.swift
//  pia9tableview
//
//  Created by Bill Martensson on 2020-09-14.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var peopleTableview: UITableView!
    
    @IBOutlet weak var nameTextfield: UITextField!
    
    
    var peoplenames = [String]()
    var peopledone = [Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        peopleTableview.dataSource = self
        peopleTableview.delegate = self
        
        peoplenames.append("Arne")
        peopledone.append(false)

        peoplenames.append("Bertil")
        peopledone.append(true)
        
        peoplenames.append("Caesar")
        peopledone.append(false)
        
        peoplenames.append("David")
        peopledone.append(false)
        
        peoplenames.append("Erik")
        peopledone.append(false)
        

    }

    
    
    @IBAction func addName(_ sender: Any) {
        if(nameTextfield.text == "")
        {
            return
        }
        
        peoplenames.append(nameTextfield.text!)
        peopledone.append(false)
        peopleTableview.reloadData()
        nameTextfield.text = ""
    }
    
    
    
    
    
}





