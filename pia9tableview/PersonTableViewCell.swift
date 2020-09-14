//
//  PersonTableViewCell.swift
//  pia9tableview
//
//  Created by Bill Martensson on 2020-09-14.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var personLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
