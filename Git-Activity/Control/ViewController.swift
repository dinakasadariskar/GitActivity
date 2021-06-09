//
//  ViewController.swift
//  spaceship-gitmission
//
//  Created by zein rezky chandra on 26/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cokcpitOutlet: UIButton!
    @IBOutlet weak var engineOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func navigateToEngine(_ sender: UIButton) {
        let engineStoryboard = UIStoryboard(name: "Engine", bundle: nil)
        let engine = engineStoryboard.instantiateViewController(withIdentifier: "engineStoryboard") as! EngineViewController
        engine.source = .control
        self.present(engine, animated: true)
    }

}
