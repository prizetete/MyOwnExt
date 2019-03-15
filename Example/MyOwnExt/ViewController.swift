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

    var oCustomView: CustomView = CustomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let uiBtn = UIButton()
        self.view.addSubview(uiBtn)
        uiBtn.translatesAutoresizingMaskIntoConstraints = false
        uiBtn.setTitle("Press", for: .normal)
        uiBtn.addTarget(self, action: #selector(self.callCustomView), for: .touchUpInside)
        uiBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        uiBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        uiBtn.backgroundColor = UIColor.red

//        self.view.setBGRedColorJa()
//        self.view.setYellowBorder(fBorderWidth: 5.0)
        self.view.setYellowBorder(fBorderWidth: 5.0)
        
    }
    
    @objc func callCustomView() {
        self.oCustomView.showCustomView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

