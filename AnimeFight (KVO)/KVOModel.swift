//
//  KVOModel.swift
//  AnimeFight (KVO)
//
//  Created by Özgün Yildiz on 10.04.22.
//

import UIKit

@objc
class KVOModel: NSObject {
    var name: String
    var image: String
    var color: UIColor
    
    init(name: String, image: String, color: UIColor) {
        self.name = name
        self.image = image
        self.color = color
    }
}

@objc
class KVOService: NSObject {
    static let shared = KVOService()
    
    @objc dynamic var kvoModel = KVOModel(name: "", image: "logo", color: .black)
    
    func sideChosen(name: String, image: String, color: UIColor) {
        self.kvoModel = KVOModel(name: name, image: image, color: color)
    }
}
