//
//  MainContentView.swift
//  WeightApp
//
//  Created by Bartek Pichalski on 31/01/2019.
//  Copyright © 2019 com.appnroll.pichalski. All rights reserved.
//

import UIKit

class MainContentView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    fileprivate func setupView() {
        backgroundColor = UIColor.white
    }

    fileprivate func setupConstraints() {

    }

}
