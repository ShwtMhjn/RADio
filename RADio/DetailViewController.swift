//
//  DetailViewController.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 24/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.rotateView(view: closeButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    //MARK: UI Manipulation
    func rotateView(view: UIView) {
        let view = view
        view.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/4))
    }
}
