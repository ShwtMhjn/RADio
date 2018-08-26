//
//  ViewController.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 11/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit
import moa
import NVActivityIndicatorView

let searchMethod = "Artists"

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var artistResults: UICollectionView!
    @IBOutlet weak var activityIndicator: NVActivityIndicatorView!
    @IBOutlet weak var message: UILabel!

    let flowLayout = UICollectionViewFlowLayout()

    var searchResults: [ArtistModel]?

    var imageSize: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchBar.placeholder = "Which artist are you looking for?"
        searchBar.searchBarStyle = UISearchBarStyle.prominent
        //        searchBar.scopeButtonTitles = ["Album", "Artist", "Tracks", "All"]
        searchBar.delegate = self
        artistResults.delegate = self
        artistResults.dataSource = self

        self.artistResults.register(UINib(nibName: "ResultsCell", bundle: nil), forCellWithReuseIdentifier: "ResultsCell")

        setupCollectionViewLayout()
    }

    private func setupCollectionViewLayout() {
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        changeItemSize(UIScreen.main.bounds.width)
        artistResults.setCollectionViewLayout(flowLayout, animated: false)
    }

    private func changeItemSize(_ screenWidth: CGFloat) {
        let itemsInRow = Int(screenWidth / 150)
        let itemSideSize = screenWidth / CGFloat(itemsInRow)
        flowLayout.itemSize = CGSize(width: itemSideSize, height: itemSideSize)
    }

    override func viewWillTransition(to size: CGSize,
                                     with coordinator: UIViewControllerTransitionCoordinator) {

        super.viewWillTransition(to: size, with: coordinator)

        changeItemSize(size.width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.activityIndicator.stopAnimating()
    }
}

extension ViewController: UISearchBarDelegate {
    //MARK: SearchBar Delegate Methods
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let searchCategory = searchMethod //searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
            //<- This will be used when we dynamically select search category from the search bar.
            //Hardcoded it for Artist now.
        if let searchTerm = searchBar.text {
            self.makeSearchCall(searchTerm: searchTerm, searchCategory: searchCategory)
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    //MARK: CollectionView Callbacks
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let itemCount: Int = (self.searchResults?.count) else {
            return 0
        }
        return itemCount
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : ResultsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ResultsCell", for: indexPath) as! ResultsCell

        if let title  = self.searchResults![indexPath.row].artistName {
            cell.title.text = title
        } else {
            cell.title.text = "No title"
        }

        if let imageUrl = self.searchResults![indexPath.row].artistImageURL?.absoluteString {
            cell.resultImage.moa.url = imageUrl
        }

        cell.resultImage.image = UIImage.init(named: "PlaceholderImage.png")

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let artist = self.searchResults?[indexPath.row]
        let searchCategory = searchMethod //searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        //<- This will be used when we dynamically select search category from the search bar.
        //Hardcoded it for Artist now.

        print(artist?.artistName ?? "No Name here mayn :/")
        DataManager().loadArtistDetails(artistName: (artist?.artistName)!, mbid: (artist?.artistMBID)!, searchMethod: searchCategory)
        self.activityIndicator.startAnimating()
    }
}

extension ViewController {
    //MARK: External Calls

    func makeSearchCall(searchTerm: String, searchCategory: String) {
        DataManager().loadArtistModels(searchString: searchTerm, searchMethod: searchCategory)

        message.isHidden = true
        self.activityIndicator.startAnimating()
    }

    func reloadViews<T>(newData: Array<T>) -> Void {
        self.searchResults = newData as? [ArtistModel]
        self.artistResults.reloadData()
        self.activityIndicator.stopAnimating()
    }
}

extension UIViewController {
    func topMostViewController() -> UIViewController {
        if let navigation = self as? UINavigationController {
            return navigation.visibleViewController!.topMostViewController()
        }
        if let tab = self as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        if self.presentedViewController == nil {
            return self
        }
        if let navigation = self.presentedViewController as? UINavigationController {
            return navigation.visibleViewController?.topMostViewController() ?? navigation        }
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController!.topMostViewController()
    }
}

extension UIApplication {
    func topMostViewController() -> UIViewController? {
        return self.keyWindow?.rootViewController?.topMostViewController()
    }
}
