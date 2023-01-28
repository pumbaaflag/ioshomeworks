//
//  MyTabBarControllerViewController.swift
//  Navigation
//
//

import UIKit

class MyTabBarController: UITabBarController {

//    private lazy var customView: CustomView = {
//        let view = CustomView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navTabOne = generatedNavigationController(vc: FeedViewController(), title: "Лента", image: UIImage(imageLiteralResourceName: "layer"))
        let navTabTwo = generatedNavigationController(vc: ProfileViewController(), title: "Профиль", image: UIImage(imageLiteralResourceName: "man"))
        
        UINavigationBar.appearance().prefersLargeTitles = true
//        self.navigationController?.navigationBar.prefersLargeTitles = true
        viewControllers = [navTabOne, navTabTwo]

        
    }
    
    fileprivate func generatedNavigationController(vc: UIViewController, title: String, image: UIImage) -> UINavigationController {
        vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
}
