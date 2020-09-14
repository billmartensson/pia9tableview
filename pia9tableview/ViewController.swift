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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        peopleTableview.dataSource = self
        peopleTableview.delegate = self
        
        peoplenames.append("Arne")
        peoplenames.append("Bertil")
        peoplenames.append("Caesar")
        peoplenames.append("David")
        peoplenames.append("Erik")
    }

    
    
    @IBAction func addName(_ sender: Any) {
        if(nameTextfield.text == "")
        {
            return
        }
        
        peoplenames.append(nameTextfield.text!)
        peopleTableview.reloadData()
        nameTextfield.text = ""
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return peoplenames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personcell") as! PersonTableViewCell
        
        cell.personLabel.text = peoplenames[indexPath.row]
        
        return cell
    }
    
    
}

