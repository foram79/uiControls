//
//  TableViewCell.swift
//  UiAssignment
//
//  Created by PCQ226 on 21/12/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var FoodView: UIView!
    
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var foodPrice: UILabel!
    @IBOutlet weak var FoodLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
