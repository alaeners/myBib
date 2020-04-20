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
    var forgotBlock: ((String) -> Void)?

    ///Eu gosto de usar stackview porque facilita o posicionamento dos objetos na tela
    private var stackVertical: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
//        stack.distribution = .fill
//        stack.alignment = .center
        stack.backgroundColor = .red
        return stack
    }()

    #warning("Por que eu estou usando lazy para criar os elementos de UI?")
    private lazy var logoBib: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = .logo
        image.contentMode = .scaleAspectFit
        return image
    }()

    private lazy var descriptionLogin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Strings.descriptionLogin
        return label
    }()

    private lazy var userAccess: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()

    private lazy var passAccess: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()

    private lazy var singIn: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var singUp: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var forgotAccess: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    ///Caso precise ajustar os espaços, usarei esse elemento
    private lazy var view: UIView = {
        let view = UIView()
        return view
    }()

    #warning("Por que eu tenho que usar um init e um required init?")
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    ///método onde eu configuro como a minha view vai aparecer e chamo ele no init(colocando nela apenas um método)
    private func setup() {
        buildHierarchy()
        addConstraints()
    }

    ///construir hierarquia é fazer com que os elementos sejam colocados na view e possam ser usados.
    private func buildHierarchy() {
        addSubview(stackVertical)
        stackVertical.addArrangedSubview(logoBib)
        stackVertical.addArrangedSubview(UIView())
    }

    ///método de inserção de constraints
    private func addConstraints() {
        stackVertical.topAnchor.constraint(equalTo: self.topAnchor, constant: Metrics.Spacing.large).isActive = true
        stackVertical.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Metrics.Spacing.large).isActive = true
        stackVertical.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        stackVertical.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true

        logoBib.centerXAnchor.constraint(equalTo: stackVertical.centerXAnchor).isActive = true

    }

    @objc private func singUpAction() {
        singUpBlock?()
    }

    @objc private func singInAction() {
        singInBlock?()
    }

    @objc private func forgotAction(type: String) {
        forgotBlock?(type)
    }
}
