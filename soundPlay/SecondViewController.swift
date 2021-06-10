//
//  SecondViewController.swift
//  soundPlay
//
//  Created by vivek shrivastwa on 10/06/21.
//

import UIKit

class SecondViewController: UIViewController {

    let label:UILabel = {
       let label = UILabel()
        label.text = "You are in second page";
        label.font = UIFont(name: "verdana", size: 20)
        label.textColor = .red
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        label.frame = CGRect(x: 50, y: 150, width: 300, height: 100)
        view.addSubview(label)
    }
    
}
