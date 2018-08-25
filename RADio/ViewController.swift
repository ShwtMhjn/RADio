//
//  ViewController.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 11/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit
import moa
import Reachability

class ViewController: UIViewController, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource, APIRequests{
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var artistResults: UICollectionView!
    @IBOutlet weak var albumResults: UICollectionView!

    let reachability = Reachability()!

    let flowLayout = UICollectionViewFlowLayout()

    var searchResults: Results?

    var imageSize: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchBar.placeholder = "Search Artist, Album or Track..."
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

    //MARK: SearchBar Delegate Methods
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        reachability.whenReachable = { _ in
            let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
            let searchCategory: String = self.getSearchMethod(scope:scope)
            if let searchTerm = searchBar.text {
                self.makeSearchCall(searchTerm: searchTerm, searchCategory: searchCategory)
            }
//        }
        reachability.whenUnreachable = { _ in
            print("Not reachable")
        }
    }

    //MARK: CollectionView Callbacks
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let itemCount = (self.searchResults?.artistMatches.artist.count) else {
            return 0
        }
        return itemCount
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : ResultsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ResultsCell", for: indexPath) as! ResultsCell
        if let title  = self.searchResults?.artistMatches.artist[indexPath.row].name {
            cell.title.text = title
        } else {
            cell.title.text = "No title"
        }
        if let imageUrl = self.searchResults?.artistMatches.artist[indexPath.row].image[4].text?.absoluteString {
            print(imageUrl)
            cell.resultImage.moa.url = imageUrl
        }

        cell.resultImage.image = UIImage.init(named: "PlaceholderImage.png")

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(self.searchResults?.artistMatches.artist[indexPath.row].name ?? "No Name here mayn :/")
    }

    //MARK: Utilities
    func pickImageSize() {
        reachability.whenReachable = { reachability in
            switch reachability.connection {
            case .cellular:
                self.imageSize = 3
            case .wifi:
                self.imageSize = 4
            default:
                self.imageSize = 3
            }
        }
    }

    func getSearchMethod(scope: String) -> String {
        var searchCategory: String
        switch scope {
        case "All":
            searchCategory = "all"
        case "Artists":
            searchCategory = "artist"
        case "Albums":
            searchCategory = "album"
        case "Tracks":
            searchCategory = "track"
        default:
            searchCategory = "all"
        }
        print("Search Category: \(searchCategory)")

        return searchCategory
    }


    func makeSearchCall(searchTerm: String, searchCategory: String) {
        let request = self.searchRequest(searchString: searchTerm, searchMethod: searchCategory)
        self.getSearchResults(for: request) { (searchResponse) in
            switch searchResponse {
            case .success(let response):
                self.searchResults = response.results
                self.pickImageSize()
                self.artistResults.reloadData()
            case .failure(let error):
                fatalError("error: \(error.localizedDescription)")
            }
        }
    }

}
