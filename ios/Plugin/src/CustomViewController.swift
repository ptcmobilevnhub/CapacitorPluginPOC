//
//  CustomViewController.swift
//  App
//
//  Created by Anh Ngo Quang Tuan on 8/5/20.
//

import UIKit
import Capacitor

class CustomViewController: UIViewController {

    var cancelHandler: (() -> Void)?
    var count = 0

    @IBAction private func button2(_ sender: Any) {
        cancelHandler?()
    }
}
