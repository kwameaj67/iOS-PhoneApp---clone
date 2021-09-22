//
//  TabBarViewController.swift
//  PhoneApp - clone
//
//  Created by Kwame Agyenim - Boateng on 06/05/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let vc1 = FavouriteViewController()
        let vc2 = RecentViewController()
        let vc3 = ContactsViewController()
        let vc4 = KeypadViewController()
        let vc5 = VoicemailViewController()
        

        
        let FavouriteScreen = UINavigationController(rootViewController: vc1)
        let RecentScreen = UINavigationController(rootViewController: vc2)
        let ContactScreen = UINavigationController(rootViewController: vc3)
        let KeypadScreen = UINavigationController(rootViewController: vc4)
        let VoiceMailScreen = UINavigationController(rootViewController: vc5)
        
//    MARK: - show large titles
        FavouriteScreen.navigationBar.prefersLargeTitles = false
        RecentScreen.navigationBar.prefersLargeTitles = true
        ContactScreen.navigationBar.prefersLargeTitles = true
        KeypadScreen.navigationBar.prefersLargeTitles = false
        VoiceMailScreen.navigationBar.prefersLargeTitles = true
        
        FavouriteScreen.navigationBar.barTintColor = UIColor.white
        ContactScreen.navigationBar.barTintColor = UIColor.white
        KeypadScreen.setNavigationBarHidden(true, animated: true)

//      MARK: -  add tabBarDetails
        FavouriteScreen.tabBarItem = UITabBarItem(title:"Favourites", image: UIImage(systemName:"star.fill"), tag: 1)
        RecentScreen.tabBarItem = UITabBarItem(title:"Recents", image: UIImage(systemName:"clock.fill"), tag: 2)
        ContactScreen.tabBarItem = UITabBarItem(title:"Contacts", image: UIImage(systemName:"person.circle"), tag: 3)
        KeypadScreen.tabBarItem = UITabBarItem(title:"Keypad", image: UIImage(systemName:"square.grid.3x3.fill"), tag: 4)
        VoiceMailScreen.tabBarItem = UITabBarItem(title:"Voicemail", image: UIImage(systemName:"circle.grid.cross.fill"), tag: 5)
        
        setViewControllers([FavouriteScreen,RecentScreen,ContactScreen,KeypadScreen,VoiceMailScreen], animated: true)
    }
}
