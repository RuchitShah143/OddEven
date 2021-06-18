//
//  ViewController.swift
//  OddEven
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton:UIButton = {
        let button=UIButton()
        button.setTitle("Even / Odd", for: .normal)
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.layer.cornerRadius = 6
        button.backgroundColor = .green
        return button
    }()
    
    @objc private func handleEvent(){
        print("received..")
        
        let vc = Evenoddvc()
        navigationController?.pushViewController(vc, animated: true)    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        myButton.frame=CGRect(x: 10, y: (view.height/2)-30, width: view.width-80, height: 60)
    }


}

