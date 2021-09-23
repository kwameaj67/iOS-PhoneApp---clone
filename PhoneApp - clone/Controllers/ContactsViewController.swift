//
//  ContactsViewController.swift
//  PhoneApp - clone
//
//  Created by Kwame Agyenim - Boateng on 06/05/2021.
// https://stackoverflow.com/questions/33973574/fetching-all-contacts-in-ios-swift

import UIKit

class ContactsViewController: UIViewController{
    let searchBarController : UISearchController = {
        let searchBar = UISearchController()
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Groups", style:.plain, target: self, action: #selector(createGroup))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem:.add, target: self, action: #selector(addContact))
        navigationItem.searchController = searchBarController
        configureSearchBar()
      
    }
   
    @objc func createGroup(){
        
    }
    
    @objc func addContact(){
        
    }

}

extension ContactsViewController: UISearchControllerDelegate, UISearchBarDelegate {
    func configureSearchBar(){
        searchBarController.delegate = self
        searchBarController.obscuresBackgroundDuringPresentation = false
        searchBarController.searchBar.delegate = self
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print(searchBar.text!)

    }
}
