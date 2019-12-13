//
//  ViewController.swift
//  AScrollView
//
//  Created by Ashish Limje on 12/13/2019.
//  Copyright (c) 2019 Ashish Limje. All rights reserved.
//

import UIKit
import AScrollView

class ViewController: UIViewController {

    let scrollView = DScrollView()
    let scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 20)
    let scrollViewElement0 = DScrollViewElement(height: 1000, backgroundColor: .blue)
    let scrollViewElement1 = DScrollViewElement(height: 1000, backgroundColor: .cyan)//.withBackground(image: #imageLiteral(resourceName: "icon.png"), contentMode: .scaleAspectFit)
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        label.text = "I am a label"
        
        view.addScrollView(scrollView,
                           withSafeArea: .none,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: scrollViewElement0, scrollViewElement1)
        
        scrollViewElement1.addSubview(label)
        //label.centerInSuperview()
        label.edgeTo(scrollViewElement1)
    }

}

