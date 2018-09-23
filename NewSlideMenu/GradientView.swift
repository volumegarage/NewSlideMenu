//
//  GradientView.swift
//  NewSlideMenu
//
//  Created by David Cate on 9/23/18.
//  Copyright © 2018 David Cate. All rights reserved.
//

import UIKit

@IBDesignable

class GradientView: UIView {

    @IBInspectable var FirstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    @IBInspectable var SecondColor: UIColor = UIColor.clear

    func updateView() {
        
    }
 

}
