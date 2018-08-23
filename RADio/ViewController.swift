//
//  ViewController.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 11/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource, APIRequests{
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var artistResults: UICollectionView!
    @IBOutlet weak var albumResults: UICollectionView!

    let flowLayout = UICollectionViewFlowLayout()

    var searchResults: Results?

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
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        let searchCategory: String = getSearchMethod(scope:scope)
        if let searchTerm = searchBar.text {
            self.getSearchResults(for: searchTerm, searchMethod: searchCategory) { (searchResponse) in

                print(searchResponse)
                        switch searchResponse {
                        case .success(let response):
                            self.searchResults = response.results
                            print(self.searchResults ?? "No Results")
                            self.artistResults.reloadData()
                        case .failure(let error):
                            fatalError("error: \(error.localizedDescription)")
                        }
                    }
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
        guard let title  = self.searchResults?.artistMatches.artist[indexPath.row].name else {
            cell.title.text = "No Title"
            return cell
        }
        cell.title.text = title
        return cell
    }

    //MARK: Utilities
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
}
