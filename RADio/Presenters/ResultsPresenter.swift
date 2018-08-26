//
//  ResultsPresenter.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 26/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit

class ResultsPresenter {
    func presentResults<T>(results: Array<T>) -> Void {
        let topMostViewController = UIApplication.shared.topMostViewController()

        let viewController: ViewController = topMostViewController as! ViewController
        viewController.reloadViews(newData: results)
    }

    func presentDetails<T>(details: T) -> Void {
        let topMostViewController = UIApplication.shared.topMostViewController()

        let viewController: ViewController = topMostViewController as! ViewController
        let detailViewController: DetailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController

        viewController.present(detailViewController, animated: true, completion: nil)

        detailViewController.loadDetails(details:details as! ArtistDetailModel)
    }
}
