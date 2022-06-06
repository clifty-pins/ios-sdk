//
//  MetadataViewController.swift
//  Sample
//
//  Created by Muthu Arumugam on 4/3/22.
//

import UIKit
import CliftyCore

class MetadataViewController: UIViewController {

    @IBOutlet weak var tokenNumber: UITextField!
    @IBOutlet weak var contractId: UITextField!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goClicked(_ sender: Any) {
        self.textView.text = "Getting response from server..."
        NFT.getMetadata(chain: EthChain.ETHEREUM, address: "0xcF849856FAb31Bbe2510ae143722B7e67130E545", tokenid: 2) { (metadata, resp, err) in
            // Let's see it
            let toDisplay = (metadata?.name)! + "\n" + (metadata!.details ?? "") + "\n" + (metadata?.symbol)!;
            self.textView.text = toDisplay;
            print(toDisplay);
        }
    }

}
