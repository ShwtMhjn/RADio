//
//  AlertsPresenter.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 27/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit

class AlertsPresenter {
    func presentAlert(title: String, message: String) -> Void {

        let topMostViewController = UIApplication.shared.topMostViewController()

        let viewController: ViewController = topMostViewController as! ViewController

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        viewController.present(alert, animated: true, completion: nil)
        viewController.removeActivityIndicator()
    }
}
