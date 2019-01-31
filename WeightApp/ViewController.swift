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
}
