//
//  ViewController.swift
//  TutorialPageViewController
//
//  Created by Rennan Rebouças on 15/10/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    private var pageController: UIPageViewController?
    
    let light = [UIView(),UIView()]
    private var pages: [Pages] = Pages.allCases
    private var currentIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pageViewControllerSetup()
    }
    
    private func pageViewControllerSetup(){
    self.pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    self.pageController?.dataSource = self
    self.pageController?.delegate = self
    self.pageController?.view.backgroundColor = .cyan
    self.pageController?.view.frame = CGRect(x: 0,y: 0,width: self.view.frame.width,height: self.view.frame.height)
    

    self.addChild(self.pageController!)
    self.view.addSubview(self.pageController!.view)
        let initialVC = PageVC(with: pages[0])
        self.pageController?.setViewControllers([initialVC], direction: .forward, animated: true, completion: nil)
    self.pageController?.didMove(toParent: self)
        
    }


}


extension ViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let currentVC = viewController as? PageVC else {
            return nil
        }
        
        var index = currentVC.page.index
        
        if index == 0 {
            index = self.pages.count - 1
//            return nil
        } else {
            index -= 1
        }
        
        let vc: PageVC = PageVC(with: pages[index])
        
        return vc
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
         guard let currentVC = viewController as? PageVC else {
                   return nil
               }
               
               var index = currentVC.page.index
               
               if index >= self.pages.count - 1 {
//                   return nil
                    index = 0
               } else {
                    index += 1
               }
               
               
               let vc: PageVC = PageVC(with: pages[index])
               
               return vc
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.pages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    
}
