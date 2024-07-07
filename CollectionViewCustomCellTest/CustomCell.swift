//
//  CustomCell.swift
//  CollectionViewCustomCellTest
//
//  Created by 柿崎 on 2024/07/07.
//

import UIKit

class CustomCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // 再利用されるときに、毎回呼ばれるメソッド
    // 主に初期化を行う
    override func prepareForReuse() {
        super.prepareForReuse()

        label.text = ""
        imageView.image = UIImage()
    }

    func setupCell(imageName: String, labelText: String) {
        label.text = labelText
        imageView.image = UIImage(named: imageName)
    }
}
