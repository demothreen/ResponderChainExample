//
//  ViewController.swift
//  UIResponderExample
//
//  Created by demothreen on 03.08.2021.
//

import UIKit

class FirstController: UIViewController {
  var btn: UIButton = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "First VC"
    view.backgroundColor = .red.withAlphaComponent(0.1)
    setBtn()
  }

  private func setBtn() {
    view.addSubview(btn)
    btn.backgroundColor = .black
    btn.setTitle("Go to second vc", for: .normal)
    btn.setTitleColor(.white, for: .normal)
    btn.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      btn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      btn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    btn.addTarget(self, action: #selector(btnTap), for: .touchUpInside)
  }

  @objc private func btnTap() {
    navigationController?.pushViewController(SecondViewController(), animated: false)
  }
}

