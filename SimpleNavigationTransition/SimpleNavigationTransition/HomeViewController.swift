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
        
        // 設定代理
        navigationController?.delegate = self
        
    }

    @IBAction func didTapPush(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.modalPresentationStyle = .custom
        detailVC.modalTransitionStyle = .crossDissolve
        navigationController?.pushViewController(detailVC, animated: true)
        
    }

}

// MARK: UINavigationControllerDelegate
extension HomeViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let transition = SKSimpleTransition()
        return transition
    }
}
