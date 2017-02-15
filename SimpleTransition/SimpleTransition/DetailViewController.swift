//
//  DetailViewController.swift
//  SimpleTransition
//
//  Created by don chen on 2017/2/13.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var popButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "DetailVC"

    }
    
    @IBAction func didTapPop(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
