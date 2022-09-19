//
//  NewsListCollectionViewCell.swift
//  MachineTest
//
//  Created by Mounika Madishetti on 27/08/21.
//

import UIKit

class NewsListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    static let reuseId = "NewsListCollectionViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(article: Article) {
        titleLabel.text = article.title
    }

}
