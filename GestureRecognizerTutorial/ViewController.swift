//
//  ViewController.swift
//  GestureRecognizerTutorial
//
//  Created by Hamit Seyrek on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var isFirst = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
        @objc func changePicture (){
            if isFirst {
                imageView.image = UIImage(named: "firstapp2")
                            nameLabel.text = "second image"
                isFirst = false
            } else{
                imageView.image = UIImage(named: "firstapp1")
                            nameLabel.text = "first image"
                isFirst = true
            }
            
        }

}

