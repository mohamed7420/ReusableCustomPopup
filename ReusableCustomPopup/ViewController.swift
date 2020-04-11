//
//  ViewController.swift
//  ReusableCustomPopup
//
//  Created by Mohamed on 4/10/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //Notification Center adding observer
        
        NotificationCenter.default.addObserver(self, selector: #selector(setText(notfication:)), name: .sendTextNotificationName, object: nil)
        
        
        
        

    }

    @objc func setText(notfication: NSNotification){
        
        
        let vc = notfication.object as? PopupViewController
        
        label.text = vc?.textView.text
        
    }

}

