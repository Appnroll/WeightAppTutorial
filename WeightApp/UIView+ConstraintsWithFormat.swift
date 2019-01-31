//
//  UIView+ConstraintsWithFormat.swift
//  WeightApp
//
//  Created by Bartek Pichalski on 31/01/2019.
//  Copyright © 2019 com.appnroll.pichalski. All rights reserved.
//

import UIKit

extension UIView {
    /// Create constraints using the stringFormat approach.
    /// - parameter format:     The string format for setting the constraing.
    /// - parameter identifier: An optional string to ease debugging constraints.
    /// - parameter metrics:    The optional dictionary for replacing metrics.
    /// - parameter views:      Enumeration of views to apply the constraints for.
    /// - returns: The collection of generated layout constraints.
    @discardableResult
    func addConstraintsWithFormat(format: String,
                                  identifier: String? = "",
                                  metrics: [String: Any]? = nil,
                                  views: [UIView]) -> [NSLayoutConstraint] {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }

        let constraints = NSLayoutConstraint.constraints(withVisualFormat: format,
                                                         options: NSLayoutConstraint.FormatOptions(),
                                                         metrics: metrics,
                                                         views: viewsDictionary)

        #if DEBUG
        // Set additional identifier if provided
        if let identifier = identifier {
            for constraint in constraints {
                constraint.identifier = "$\(identifier)$"
            }
        }
        #endif

        addConstraints(constraints)
        return constraints
    }

    @discardableResult
    func addConstraintsWithFormat(format: String,
                                  identifier: String? = "",
                                  metrics: [String: Any]? = nil,
                                  views: UIView...) -> [NSLayoutConstraint] {
        return addConstraintsWithFormat(format: format,
                                        identifier: identifier,
                                        metrics: metrics,
                                        views: views)
    }
}
