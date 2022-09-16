//
//  DetailsViewController.swift
//  SuperKahramanKitabi
//
//  Created by Hamza Oban on 16.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedHeroName = ""
    var selectedHeroImagesName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = selectedHeroName
        imageView.image = UIImage(named: selectedHeroImagesName)
        
    }
    

}
