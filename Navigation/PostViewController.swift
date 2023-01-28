//
//  PostViewController.swift
//  Navigation
//
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
//        self.view.addSubview(self.barButtonItem)
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(setColor))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc func setColor() {
//        self.view.backgroundColor = .red
        
        let ivc = InfoViewController()
        self.present(ivc, animated: true, completion: nil)
    }
}
