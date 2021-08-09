//
//  ViewController.swift
//  UIResponderExample
//
//  Created by demothreen on 03.08.2021.
//

import UIKit

class MainController: UIViewController {
  var customView: CustomView = CustomView()

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Main VC"
    view.backgroundColor = .red.withAlphaComponent(0.6)
    setView()
  }

  private func setView() {
    view.addSubview(customView)
    customView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      customView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
      customView.heightAnchor.constraint(equalTo: customView.widthAnchor),
      customView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      customView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }

  @objc func onButtonTap() {
    let alert = UIAlertController(title: nil, message: "You are here!", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Good", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
}
