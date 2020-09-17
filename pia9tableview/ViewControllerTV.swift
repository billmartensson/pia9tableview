//
//  ViewControllerTV.swift
//  pia9tableview
//
//  Created by Bill Martensson on 2020-09-17.
//

import Foundation
import UIKit

extension ViewController
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return peoplenames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personcell") as! PersonTableViewCell
        
        cell.personLabel.text = peoplenames[indexPath.row]
        
        if(peopledone[indexPath.row] == true)
        {
            cell.doneView.backgroundColor = UIColor.green
        } else {
            cell.doneView.backgroundColor = UIColor.red
        }
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("DU HAR TRYCKT PÅ RAD NUMMER " + String(indexPath.row))
        
        //peoplenames.remove(at: indexPath.row)
        //peopleTableview.reloadData()
        
        //peopledone[indexPath.row] = true
        
        if(peopledone[indexPath.row] == true)
        {
            peopledone[indexPath.row] = false
        } else {
            peopledone[indexPath.row] = true
        }

        peopleTableview.reloadData()
        
    }
}
