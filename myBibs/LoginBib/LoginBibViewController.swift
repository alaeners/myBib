//
//  LoginBibViewController.swift
//  myBibs
//
//  Created by Alaene Rufino de Sousa on 19/04/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import UIKit

class LoginBibViewController: UIViewController {
    var contentView: LoginBibView

    init(contentView: LoginBibView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }

    required public init?(coder aDecoder: NSCoder) {
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        super.viewWillAppear(animated)
    }

    private func setup() {
        view.backgroundColor = .white

        contentSetup()
    }

    #warning("Qual a diferença entre weak e unowned")
    private func contentSetup() {
        view.addSubview(contentView)
        
        contentView.singInBlock = { [unowned self] in
            print("devia acontecer alguma coisa aqui")
        }

        contentView.singUpBlock = { [unowned self] in
            print("devia acontecer alguma coisa aqui")
        }

        contentView.forgotBlock = { [unowned self] type in
            print("devia acontecer alguma coisa aqui")
        }
    }
}
