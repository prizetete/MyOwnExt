//
//  ViewController.swift
//  MyOwnExt
//
//  Created by prizetete on 03/08/2019.
//  Copyright (c) 2019 prizetete. All rights reserved.
//

import UIKit
import MyOwnExt

class ViewController: UIViewController {

    var oooo: CustomView = CustomView()
//    private var oo: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.oo = CustomView()
//        self.view.setViewColor()
//        let oop = CustomView()
//
        print("CustomView: ",self.oooo)
        
        let uiBtn = UIButton()
        self.view.addSubview(uiBtn)
        uiBtn.translatesAutoresizingMaskIntoConstraints = false
        uiBtn.setTitle("Press", for: .normal)
        uiBtn.addTarget(self, action: #selector(self.callCustomView), for: .touchUpInside)
        uiBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        uiBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        uiBtn.backgroundColor = UIColor.red

        // Do any additional setup after loading the view, typically from a nib.
        self.view.setYellowBorder(fBorderWidth: 5.0)
        self.view.setViewColor()
//        showCustomView
        
    }
    
    @objc func callCustomView() {
        self.oooo.showCustomView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

