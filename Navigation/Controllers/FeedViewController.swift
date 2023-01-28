//
//  FeedViewController.swift
//  Navigation
//
//

import UIKit

class FeedViewController: UIViewController {

    let myPost = Post(title: "Новый заголовок!")
    
    private lazy var transitionButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.backgroundColor = .systemBlue
        button.setTitle("Перейти на другой экран", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapTransitionButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        self.view.addSubview(self.transitionButton)
        self.activateConstraints()
    }
    
    private func activateConstraints() {
//        self.transitionButton.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
//        self.transitionButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
//        self.transitionButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
//        self.transitionButton.bottomAnchor.constraint(equalTo: self.transitionButton.topAnchor, constant: -16).isActive = true
//
        self.transitionButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.transitionButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.transitionButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.transitionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func didTapTransitionButton() {
        let pvc = PostViewController()
        pvc.title = myPost.title
        self.navigationController?.pushViewController(pvc, animated: true)
//        self.present(vc, animated: true, completion: nil)
    }
    
}
