//
//  XiblessView.swift
//  XIBLessExample
//
//  Created by John Stricker on 7/11/16.
//  Copyright © 2016 Raizlabs. All rights reserved.
//

import Anchorage
import UIKit

let button = UIButton(type: .System)

final class XiblessView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configure the view

private extension XiblessView {

    func configureView() {

        // View heirarchy

        addSubview(button)

        // Style 
        backgroundColor = UIColor.greenColor()
        button.setTitle("This is a centered button without a XIB", forState: .Normal)

        // Layout

        button.centerXAnchor == centerXAnchor
        button.centerYAnchor == centerYAnchor
    }


}
