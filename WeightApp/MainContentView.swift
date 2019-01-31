//
//  MainContentView.swift
//  WeightApp
//
//  Created by Bartek Pichalski on 31/01/2019.
//  Copyright © 2019 com.appnroll.pichalski. All rights reserved.
//

import UIKit

class MainContentView: UIView {

    var weight: Int = 0 {
        didSet {
            statusLabel.text = "\(weight)G"
        }
    }

    var circleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "circle")
        return imageView
    }()

    var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "0G"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20.0)
        label.textColor = UIColor(red:0.35, green:0.44, blue:0.55, alpha:1.00)
        return label
    }()

    var commentLabel: UILabel = {
        let label = UILabel()
        label.text = "Tap to see weight"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16.0)
        label.textColor = UIColor(red:0.35, green:0.44, blue:0.55, alpha:0.50)
        return label
    }()

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
        addSubview(statusLabel)
        addSubview(commentLabel)
        addSubview(circleImageView)
    }

    fileprivate func setupConstraints() {
        addConstraintsWithFormat(format: "H:|[v0]|", views: statusLabel)
        addConstraintsWithFormat(format: "H:|[v0]|", views: commentLabel)
        addConstraintsWithFormat(format: "H:|[v0]|", views: circleImageView)

        addConstraintsWithFormat(format: "V:[v0]-70-[v1]-90-|", views: statusLabel, commentLabel)
        addConstraintsWithFormat(format: "V:|-200-[v0]", views: circleImageView)
    }

}
