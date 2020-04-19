//
//  ViewController.swift
//  myBibs
//
//  Created by Alaene Rufino de Sousa on 19/04/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    #warning("Esse método tem que sumir, mas isso pode ser depois")
    @IBAction func star(_ sender: Any) {
        #warning("por que a minha navigationController está retornando nil?")
        let novoViewController = LoginBibViewController(contentView: LoginBibView())
        self.present(novoViewController, animated: true, completion: nil)
    }
}

