//
//  MineCell.swift
//  Buscaminas
//
//  Created by MacBook Pro on 26/07/24.
//

import UIKit

class MineCell: UICollectionViewCell {
    static let identifier = "MineCell"
    @IBOutlet weak var btnCell: UIButton!
    
    @IBOutlet weak var imageCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
}
