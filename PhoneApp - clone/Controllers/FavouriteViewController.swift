//
//  FavouriteViewController.swift
//  PhoneApp - clone
//
//  Created by Kwame Agyenim - Boateng on 06/05/2021.
//

import UIKit

class FavouriteViewController: UIViewController {
    var label:UILabel = {
        let label = UILabel()
        label.text = "No Favourites"
        label.textColor = .systemGray3
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    override func loadView() {
        super.loadView()
        [label].forEach { item in
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Favourites"
        setupConstraints()
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem:.add, target: self, action: #selector(addFavourite))

    }
    @objc func addFavourite(){
        
    }
    
    


}

extension FavouriteViewController{
    func setupConstraints(){
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
