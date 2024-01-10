//
//  MyTableViewCell.swift
//  UITableViewTutorials
//
//  Created by Arkar on 21/08/2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblText2: UILabel!
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
