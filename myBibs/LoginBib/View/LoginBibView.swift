//
//  LoginBibView.swift
//  myBibs
//
//  Created by Alaene Rufino de Sousa on 19/04/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import UIKit

class LoginBibView: UIView {
    ///variável pública para eu poder manipular pela controller sem dar muito acesso a minha view por aplicações externas, quando se aplica esse conceito.
    var singUpBlock: (() -> Void)?
    var singInBlock: (() -> Void)?

    #warning("Por que eu estou usando lazy para criar os elementos de UI?")
    private lazy var userAccess: UITextField = {
        let textfield = UITextField()
        return textfield
    }()

    private lazy var passAccess: UITextField = {
        let textfield = UITextField()
        return textfield
    }()

    private lazy var singIn: UIButton = {
        let button = UIButton()
        return button
    }()

    private lazy var singUp: UIButton = {
        let button = UIButton()
        return button
    }()

    #warning("Por que eu teho que usar um init e um required init?")
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    private func setup() {
        buildHierarchy()
        addConstraints()
    }

    ///construir hierarquia é fazer com que os elementos sejam colocados na view e possam ser usados.
    private func buildHierarchy() {}

    ///método de inserção de constraints
    private func addConstraints() {}

    @objc private func singUpAction() {
        singUpBlock?()
    }

    @objc private func singInAction() {
        singInBlock?()
    }
}
