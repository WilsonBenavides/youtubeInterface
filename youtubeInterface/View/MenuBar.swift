//
//  MenuBar.swift
//  youtubeInterface
//
//  Created by willix on 15/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class MenuBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .navigationBarColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
