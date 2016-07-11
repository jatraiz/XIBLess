//
//  MainViewController.swift
//  XIBLessExample
//
//  Created by John Stricker on 6/20/16.
//  Copyright © 2016 Raizlabs. All rights reserved.
//

import Anchorage
import UIKit

class MainViewController: UIViewController {

    let xibView = XibView(frame: CGRect.zero)
    let xibLessView = XiblessView(frame: CGRect.zero)

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViews()
    }
}

private extension MainViewController {

    func configureViews() {

        // View Heirarchy

        view.addSubview(xibView)
        view.addSubview(xibLessView)

        // Style

        view.backgroundColor = UIColor.whiteColor()

        // Layout

        // Xib view is placed at the top below the status bar with half the height of the view
        xibView.topAnchor          == topLayoutGuide.bottomAnchor
        xibView.horizontalAnchors  == view.horizontalAnchors
        xibView.heightAnchor       == view.heightAnchor / 2.0

        // Xibless view is placed below the XIB view and otherwise its layout is the same
        xibLessView.topAnchor          == xibView.bottomAnchor
        xibLessView.horizontalAnchors  == xibView.horizontalAnchors
        xibLessView.heightAnchor       == xibView.heightAnchor
    }
}

