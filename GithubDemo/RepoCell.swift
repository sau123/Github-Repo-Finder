//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Saumeel Gajera on 7/21/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var repoOwner: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var repoDescription: UILabel!
    @IBOutlet weak var repoForks: UILabel!
    @IBOutlet weak var repoStars: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
