//
//  DetailViewController.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 24/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit
import moa

class DetailViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var listeners: UILabel!
    @IBOutlet weak var playcount: UILabel!
    @IBOutlet weak var summary: UITextView!

    var artistDetails: ArtistDetailModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.rotateView(view: closeButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension DetailViewController {

    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    //MARK: UI Manipulation
    func rotateView(view: UIView) {
        let view = view
        view.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/4))
    }

    func loadDetails(details: ArtistDetailModel) -> Void {
        image.moa.url = details.artistImageURL?.absoluteString

        name.text = (details.artistName!)
        listeners.text?.append(details.artistListeners ?? "0")
        playcount.text?.append(details.artistPlaycount ?? "0")
        summary.text = details.artistBio ?? "Too much to say; you probably want to Google this on your own."
    }
}
