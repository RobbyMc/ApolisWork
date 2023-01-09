//
//  RocketTableViewCell.swift
//  SpaceXData
//
//  Created by Robert McLean on 12/28/22.
//

import UIKit

class RocketTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var idLabel:UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detailText: UITextView!
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var upcoming: UILabel!
    @IBOutlet weak var success: UILabel!
    @IBOutlet weak var rocket: UILabel!
    
    var rocketdata:Rockets?{
    didSet{
        name.text = rocketdata?.name ?? "No name"
        date.text = rocketdata?.date_utc?.description
        if rocketdata?.success == true {
            success.text = "Success"
        } else {success.text = "Failure"}
        
        
    }

    }

}
