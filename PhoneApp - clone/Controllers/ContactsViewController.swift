//
//  ContactsViewController.swift
//  PhoneApp - clone
//
//  Created by Kwame Agyenim - Boateng on 06/05/2021.
//

import UIKit

class ContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Groups", style:.plain, target: self, action: #selector(createGroup))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem:.add, target: self, action: #selector(addContact))
       
        
      
    }
    @objc func createGroup(){
        
    }
    
    @objc func addContact(){
        
    }

   

}
