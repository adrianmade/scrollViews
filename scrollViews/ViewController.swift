//
//  ViewController.swift
//  scrollViews
//
//  Created by Adrian Martinez on 4/17/17.
//  Copyright © 2017 Adrian Made This. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var swipe: UIPanGestureRecognizer!
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
    }
    
}
