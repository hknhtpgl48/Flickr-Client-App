//
//  PhotoDetailViewController.swift
//  Flickr Client App
//
//  Created by Hakan Hatipoğlu on 28.03.2023.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var photo: Photo?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.backgroundColor = .gray
        ownerImageView.backgroundColor = .darkGray
        ownerImageView.layer.cornerRadius = 24.0
        ownerNameLabel.text = "Owner Name"
        ownerNameLabel.text = photo?.ownername
        //getting ownerImage
        NetworkManager.shared.fetchImage(with: photo?.buddyIconUrl) { data in
            self.ownerImageView.image = UIImage(data: data)
        }
        //getting image
        NetworkManager.shared.fetchImage(with: photo?.urlZ) { data in
            self.imageView.image = UIImage(data: data)
        }
        imageView.backgroundColor = .gray
        title = photo?.title
        descriptionLabel.text = photo?.description?.content
    }
    
}
