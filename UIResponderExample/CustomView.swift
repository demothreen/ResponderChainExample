//
//  CustomView.swift
//  UIResponderExample
//
//  Created by demothreen on 24.08.2021.
//

import UIKit

class CustomView: UIView {
  private var yInset: CGFloat = 5
  private var xInset: CGFloat = 15
  private var btn: UIButton = UIButton()

  override init(frame: CGRect) {
    super.init(frame: frame)
    prepareView()
  }

  private func prepareView() {
    setBtn()
  }

  private func setBtn() {
    addSubview(btn)
    btn.backgroundColor = .black
    btn.setTitle("responde to vc", for: .normal)
    btn.titleEdgeInsets = UIEdgeInsets(top: yInset, left: xInset, bottom: yInset, right: xInset)
    btn.setTitleColor(.white, for: .normal)
    btn.titleLabel?.adjustsFontSizeToFitWidth = true
    btn.titleLabel?.font = UIFont.systemFont(ofSize: 24)
    btn.layer.cornerRadius = 10
    btn.layer.masksToBounds = true
    btn.translatesAutoresizingMaskIntoConstraints = false
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
