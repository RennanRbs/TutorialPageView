//
//  CaseEnum.swift
//  TutorialPageViewController
//
//  Created by Rennan Rebouças on 15/10/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import Foundation

enum Pages: CaseIterable {
    case pageZero
    case pageOne
    case pageTwo
    case pageThree
    case pageFour
    case pageFive
    
    var name: String {
        switch self {
        case .pageZero:
            return "This is page zero"
        case .pageOne:
            return "This is page one"
        case .pageTwo:
            return "This is page two"
        case .pageThree:
            return "This is page three"
        case .pageFour:
            return "This is page Four"
        case .pageFive:
            return "This is page Five"
        }
    }
    
    var index: Int {
        switch self {
        case .pageZero:
            return 0
        case .pageOne:
            return 1
        case .pageTwo:
            return 2
        case .pageThree:
            return 3
        case .pageFour:
            return 4
        case .pageFive:
            return 5
        }
    }
}
