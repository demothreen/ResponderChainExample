//
//  CustomView.swift
//  UIResponderExample
//
//  Created by demothreen on 24.08.2021.
//

import UIKit

class CustomView: UIView {
  private var btn: UIButton = {
    let button = UIButton()
    button.backgroundColor = .black
    button.setTitle("responde to vc", for: .normal)
    button.titleEdgeInsets = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
    button.layer.cornerRadius = 10
    button.layer.masksToBounds = true
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    prepareView()
  }

  private func prepareView() {
    setBtn()
  }

  private func setBtn() {
    addSubview(btn)
    NSLayoutConstraint.activate([
      btn.centerYAnchor.constraint(equalTo: centerYAnchor),
      btn.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
    btn.addTarget(nil, action: #selector(MainController.onButtonTap), for: .touchUpInside)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
