//
//  ViewController.swift
//  WeightApp
//
//  Created by Bartek Pichalski on 31/01/2019.
//  Copyright © 2019 com.appnroll.pichalski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var contentView: MainContentView!

    override func loadView() {
        super.loadView()
        setupView()
        setupConstraints()
    }

    fileprivate func setupView() {
        contentView = MainContentView()
        view.addSubview(contentView)
    }

    fileprivate func setupConstraints() {
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: contentView)
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: contentView)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if traitCollection.forceTouchCapability == .available {
                if touch.force >= touch.maximumPossibleForce {
                    contentView.weight = 385
                } else {
                    let force = touch.force / touch.maximumPossibleForce
                    let grams = force * 385
                    let roundGrams = Int(grams)
                    contentView.weight = roundGrams
                }
            }
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        contentView.weight = 0
    }
}
