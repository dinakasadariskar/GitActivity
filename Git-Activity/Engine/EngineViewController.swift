//
//  EngineViewController.swift
//  spaceship-gitmission
//
//  Created by zein rezky chandra on 26/05/21.
//

import UIKit

protocol EngineProtocol: AnyObject {
    func navigateToControlRoom()
}

class EngineViewController: UIViewController {
    
    var source: Access? = .control
    
    weak var delegate: EngineProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateToControl(_ sender: UIButton) {
        if source == .cockpit {
            dismiss(animated: true) { [self] in
                delegate?.navigateToControlRoom()
            }
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
    
}

