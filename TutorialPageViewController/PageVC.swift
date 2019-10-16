//
//  PageVC.swift
//  TutorialPageViewController
//
//  Created by Rennan Rebouças on 15/10/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class PageVC: UIViewController {
    
    var titleLabel: UILabel?
    
    var page: Pages
    
    init(with page: Pages) {
        self.page = page
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        titleLabel?.center = CGPoint(x: 160, y: 250)
        titleLabel?.textAlignment = NSTextAlignment.center
        titleLabel?.text = page.name
        self.view.addSubview(titleLabel!)
    }
}
