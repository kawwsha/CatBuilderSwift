//
//  CatTableViewCell.swift
//  CatBuilderSwift
//
//  Created by Kasia McLellan on 2/6/19.
//  Copyright © 2019 KatherineMclellan. All rights reserved.
//

import UIKit

class CatTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
