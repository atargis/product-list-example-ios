//
//  XibLoadable.swift
//  ProductsListExample
//
//  Created by atargis on 04/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

public protocol XibLoadable: class {
    static var xibName: String { get }
    static func fromXib() -> Self
}

extension XibLoadable where Self: UIView {
    public static var xibName: String {
        guard let xibName = String(describing: self).components(separatedBy: ".").last else {
            fatalError("Error when loading xib !!")
        }
        return xibName
    }

    public static func fromXib() -> Self {
        return loadFromXibNamed(xibName)!
    }

    private static func loadFromXibNamed(_ nibNamed: String, bundle: Bundle? = nil) -> Self? {
        return UINib(nibName: nibNamed, bundle: bundle).instantiate(withOwner: nil, options: nil).first as? Self
    }
}
