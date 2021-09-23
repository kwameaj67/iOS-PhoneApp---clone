//
//  RecentViewController.swift
//  PhoneApp - clone
//
//  Created by Kwame Agyenim - Boateng on 06/05/2021.
//

import UIKit

class RecentViewController: UIViewController {
    let segmentedControl : UISegmentedControl = {
        let titles = ["All","Missed"]
       let segmentedControl = UISegmentedControl(items: titles)
        segmentedControl.backgroundColor = .systemGray6
        segmentedControl.tintColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        segmentedControl.sizeToFit()
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(onTapControl(_:)), for: .valueChanged)
        segmentedControl.setWidth(80, forSegmentAt: 0)
        segmentedControl.setWidth(80, forSegmentAt: 1)
        return segmentedControl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recents"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editList))
        navigationItem.titleView = segmentedControl
    }
    
    @objc func editList(){
        
    }
    @objc func onTapControl(_ sender: UISegmentedControl){
        print(sender.selectedSegmentIndex)
    }

}

extension RecentViewController{
    func setupConstraints(){
        segmentedControl.addAnchor(width: 120)
    }
}
