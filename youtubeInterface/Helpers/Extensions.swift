//
//  Extensions.swift
//  youtubeInterface
//
//  Created by willix on 13/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

extension UIColor {
    static var statusBarColor = UIColor.rgb(red: 43, green: 113, blue: 143)
    static var navigationBarColor = UIColor.rgb(red: 50, green: 129, blue: 162)
    static var iconBarColor = UIColor.rgb(red: 191, green: 230, blue: 247)
    static var iconDarkBarColor = UIColor.rgb(red: 32, green: 53, blue: 62)
    static var separatorColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
}

extension UIImageView {
    
    func loadImageUsingUrlString(urlString: String) {
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!, completionHandler:  { (data, responses, error) in
            
            if error != nil {
                print(error ?? "error handling")
                return
            }
            
            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
            }
            
        }).resume()
    }
}
