//
//  PopupViewController.swift
//  ReusableCustomPopup
//
//  Created by Mohamed on 4/11/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        

    }
    

    @IBAction func buttonTappedSendData(_ sender: UIButton) {
        
        
        print("Send Text")
        
        // sending data using Notification Center
        self.dismiss(animated: true) {
            
            NotificationCenter.default.post(name: .sendTextNotificationName, object: self)
        }
        
        
    }
    

}
