 //
//  HomeTableViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/3/15.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class HomeTableViewController: BaseViewController {
    
    private lazy var titleBtn : TitleButton = TitleButton()
    private lazy var popVc : PopoverViewController = PopoverViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        vistorView.addRotationAnim()
        if !isLogin {
            return
        }
        
        setupNavigationBar()
    }
}
 
 extension HomeTableViewController {
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(imgName: "navigationbar_friendattention")
        navigationItem.rightBarButtonItem = UIBarButtonItem(imgName: "navigationbar_pop")
        
        titleBtn.addTarget(self, action:#selector(titleBtnClick), for: .touchUpInside)
        navigationItem.titleView = titleBtn
    }
 }
 
 extension HomeTableViewController {
    @objc private func titleBtnClick() {
        titleBtn.isSelected = !titleBtn.isSelected;
        
        popVc.transitioningDelegate = self
        popVc.modalPresentationStyle = .custom
        
        present(popVc, animated: true, completion: nil)
    } 
 }
 
 extension HomeTableViewController : UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return PresentationController (presentedViewController: presented, presenting: presenting)
    } 
 }

