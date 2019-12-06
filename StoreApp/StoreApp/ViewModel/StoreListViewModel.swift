//
//  StoreListVIewModel.swift
//  StoreApp
//
//  Created by 이동영 on 2019/12/05.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation
protocol StoreListViewBindable: AnyObject {
    
    var dataDidLoad: (() -> Void)? { get set }
    var dataDidUpadated: (() -> Void)? { get set }
    
    func numOfCategories() -> Int
    func numOfMenusInCategory(_ category: Int) -> Int
    
    subscript(category index: Int) -> String { get }
    subscript(menu indexPath: IndexPath) -> Menu { get }
}

