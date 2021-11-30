//
//  NSObjectExtension.swift
//  TodoList
//
//  Created by Dmytro Brovkin on 2021-11-30.
//

import Foundation

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
