//
//  CustomTableViewCell.swift
//  StretchMyHeader
//
//  Created by Daniel Grosman on 2017-12-05.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var headline: UILabel!
    
    var newsItem: NewsItem? {
        didSet {
            if let item = newsItem {
                titleCell.text = item.category.convertToString()
                titleCell.textColor = item.category.convertToColour()
                headline.text = item.summary
            }
            else {
                titleCell.text = nil
                headline.text = nil
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
