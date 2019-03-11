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

//    var oooo: CustomView = CustomView()
//    private var oo: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.oo = CustomView()
        
        let oop = CustomView()
        oop.oooo()
//        oop.oooo()
//        oop
        // Do any additional setup after loading the view, typically from a nib.
        self.view.setYellowBorder(fBorderWidth: 5.0)
//        showCustomView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

