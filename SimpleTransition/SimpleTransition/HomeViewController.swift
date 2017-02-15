//
//  HomeViewController.swift
//  SimpleTransition
//
//  Created by don chen on 2017/2/13.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "HomeVC"
        
        pushButton.layer.cornerRadius = 22
        
        
    }

    @IBAction func didTapPush(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.modalPresentationStyle = .fullScreen
        detailVC.transitioningDelegate = self
        present(detailVC, animated: true, completion: nil)
    }

}

// MARK: UIViewControllerTransitioningDelegate
extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let transition = SKSimpleTransition()
        return transition
        
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let transition = SKSimpleTransition()
        return transition
    }
    
}
