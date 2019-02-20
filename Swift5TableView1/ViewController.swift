//
//  ViewController.swift
//  Swift5TableView1
//
//  Created by Naoki Arakawa on 2019/02/20.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var box = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
    
    }

    
    @IBAction func countUp(_ sender: Any) {
        
        box += 1
        label.text = String(box)
        
        if (box > 10) {
            
            //boxが10を超えた場合に画面を遷移させる
            let viewController2 : ViewController2 = self.storyboard?.instantiateViewController(withIdentifier : "next") as! ViewController2
            
            viewController2.count = box
            
            //画面遷移
            self.navigationController?.pushViewController(viewController2, animated: true)
            
            
        }
        
        
    }
    

}

