//
//  ThirdViewController.swift
//  UIResponderExample
//
//  Created by demothreen on 04.08.2021.
//

import UIKit

class ThirdViewController: UIViewController {
  var btn: UIButton = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Third VC"
    view.backgroundColor = .red.withAlphaComponent(0.5)
    setBtn()
  }

  private func setBtn() {
    view.addSubview(btn)
    btn.backgroundColor = .black
    btn.setTitle("Responder to first", for: .normal)
    btn.setTitleColor(.white, for: .normal)
    btn.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      btn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      btn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    btn.addTarget(nil, action: #selector(FirstController.doSomething), for: .touchUpInside)
  }

//  @objc private func btnTap() {
//    UIApplication.shared.sendAction(#selector(FirstController.doSomething), to: nil, from: nil, for: nil)
//  }
}
