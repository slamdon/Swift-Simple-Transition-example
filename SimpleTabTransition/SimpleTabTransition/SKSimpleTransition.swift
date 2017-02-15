//
//  SKSimpleTransition.swift
//  SimpleTransition
//
//  Created by don chen on 2017/2/13.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit

class SKSimpleTransition:NSObject, UIViewControllerAnimatedTransitioning {
    
    // 定義轉場動畫為0.8秒
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.8
    }
    
    // 具體的轉場動畫
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromVC = transitionContext.viewController(forKey: .from)
        let fromView = fromVC?.view
        
        let toVC = transitionContext.viewController(forKey: .to)
        let toView = toVC?.view
        
        let containerView = transitionContext.containerView
        containerView.addSubview(fromView!)
        containerView.addSubview(toView!)
        
        // 轉場動畫
        toView?.alpha = 0
        UIView.animate(withDuration: 0.4, animations: {
            fromView?.alpha = 0
            
            
        }, completion: { finished in
            UIView.animate(withDuration: 0.4, animations: {
                toView?.alpha = 1
                
            }, completion: { finished in
                
                // 通知完成轉場
                transitionContext.completeTransition(true)
            })
            
        })
            
        
    }
}
