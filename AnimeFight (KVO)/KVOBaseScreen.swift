//
//  ViewController.swift
//  AnimeFight (KVO)
//
//  Created by Özgün Yildiz on 10.04.22.
//

import UIKit

class KVOBaseScreen: UIViewController {
        
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    var observable: Any?

    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
        chooseButton.addTarget(self, action: #selector(goToSelection), for: .touchUpInside)
        self.observable = KVOService.shared.observe(\.kvoModel, options: [.old, .new]) {
            [weak self] property, change in
            print(property.kvoModel.name)
            let newVal = change.newValue
            self?.setView(kvoModel: newVal!)
        }
    }

    @objc func goToSelection() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "KVOSelectionScreen") as! KVOSelectionScreen
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

