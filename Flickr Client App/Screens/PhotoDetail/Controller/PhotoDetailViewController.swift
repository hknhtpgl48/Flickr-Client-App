//
//  PhotoDetailViewController.swift
//  Flickr Client App
//
//  Created by Hakan Hatipoğlu on 28.03.2023.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Photo Detail"
        imageView.backgroundColor = .gray
        ownerImageView.backgroundColor = .darkGray
        ownerNameLabel.text = "Owner Name"
        descriptionLabel.text = "Description Label Description Label Description Label Description Label Description Label Description Label"
    }

}
