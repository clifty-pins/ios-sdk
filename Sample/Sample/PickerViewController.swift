//
//  PickerViewController.swift
//  Sample
//
//  Created by Muthu Arumugam on 9/3/22.
//

import UIKit
import CliftyNFTPicker

class PickerViewController: UIViewController {

    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var tokenNumberLabel: UILabel!
    @IBOutlet weak var tokenImage: UIImageView!
    
    var imageLoader = ImageLoader()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pickClicked(_ sender: Any) {
        let picker = CliftyNFTPicker()
        picker.getSelectedNFT(chain: "ETH", connectUrl:"wc", customerID: "1", parent:self) { metadata, err in
            print("Chosen account \(String(describing: metadata?.owner))");
            DispatchQueue.main.async { [self] in
                self.ownerLabel.text = metadata?.owner;
//                self.tokenLabel.text = metadata?.contract;
//                self.tokenNumberLabel.text = metadata?.token;
                                
                imageLoader.obtainImageWithPath(imagePath: (metadata?.asseturl)!) { (image) in
                    self.tokenImage.image = image
                }
            }
        }
    }

}
