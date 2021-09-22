//
//  VoicemailViewController.swift
//  PhoneApp - clone
//
//  Created by Kwame Agyenim - Boateng on 06/05/2021.
//

import UIKit

class VoicemailViewController: UIViewController {
    var callButton: UIButton = {
        let color = UIColor.systemGray3.cgColor
        let callButton = UIButton()
        callButton.backgroundColor = .white
        callButton.layer.borderWidth = 1.5
        callButton.layer.borderColor = color
        callButton.setTitle("Call Voicemail", for: .normal)
        callButton.setTitleColor(.systemGray3, for: .normal)
        callButton.layer.cornerRadius = 4
        callButton.titleLabel!.font = UIFont.boldSystemFont(ofSize: 14)
        return callButton
    }()
    override func loadView() {
        super.loadView()
        [callButton].forEach { item in
            view.addSubview(item).self
            item.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Voicemail"
        setupConstraints()
    }
    
    


}

extension VoicemailViewController{
    func setupConstraints(){
        callButton.addAnchor(width: 150, height: 35)
        callButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        callButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
