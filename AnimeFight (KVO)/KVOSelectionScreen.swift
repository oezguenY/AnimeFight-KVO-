//
//  KVOSelectionScreen.swift
//  AnimeFight (KVO)
//
//  Created by Özgün Yildiz on 10.04.22.
//

import UIKit

class KVOSelectionScreen: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dbzButtonTapped(_ sender: UIButton) {
        let name = Constants.SON_GOKU
        let image = Constants.SON_GOKU_IMAGE
        let color = UIColor.red
        KVOService.shared.sideChosen(name: name, image: image, color: color)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func opmButtonTapped(_ sender: UIButton) {
        let name = Constants.SAITAMA
        let image = Constants.SAITAMA_IMAGE
        let color = UIColor.cyan
        KVOService.shared.sideChosen(name: name, image: image, color: color)
        dismiss(animated: true, completion: nil)
    }

}

