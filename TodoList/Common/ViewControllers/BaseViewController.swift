//
//  BaseController.swift
//  TodoList
//
//  Created by Dmytro Brovkin on 2021-11-30.
//

import UIKit
    
class BaseViewController: UIViewController {
    enum LoadType {
        case programmatically
        case xib
        case xibWith(suffix: String)
        case xibName(String)
    }
    
    // MARK: - Life cycle
    init(loadType: LoadType = .xib) {
        var nibName: String
        
        switch loadType {
        case .programmatically:
            super.init(nibName: nil, bundle: nil)
            return
        case .xib:
            nibName = type(of: self).className
        case let .xibWith(suffix):
            nibName = type(of: self).className + suffix
        case let .xibName(name):
            nibName = name
        }
        
        super.init(nibName: nibName, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}
