//
//  ViewController.swift
//  TableCollectionTask
//
//  Created by macos on 24/07/20.
//  Copyright © 2020 macos. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    var imgarr = [#imageLiteral(resourceName: "1200px-Image_created_with_a_mobile_phone"),#imageLiteral(resourceName: "white-transparent-leaf-on-mirror-260nw-1029171697"),#imageLiteral(resourceName: "3643e61d645f20eca8419e4ebab606e8"),#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "visual-reverse-image-search-v2_intro"),#imageLiteral(resourceName: "images-2"),#imageLiteral(resourceName: "beautiful-water-drop-on-dandelion-260nw-789676552"),#imageLiteral(resourceName: "images-2"),#imageLiteral(resourceName: "visual-reverse-image-search-v2_intro"),#imageLiteral(resourceName: "white-transparent-leaf-on-mirror-260nw-577160911")]
    
    var a = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell

        if indexPath.row == 0
        {
            a = 10
            cell.collection.reloadData()
        }
        else if indexPath.row == 1
        {
            a = 9
            cell.collection.reloadData()
        }
        else if indexPath.row == 2
        {
            a = 8
            cell.collection.reloadData()
        }
        else if indexPath.row == 3
        {
            a = 7
            cell.collection.reloadData()
        }
        else if indexPath.row == 4
        {
            a = 6
            cell.collection.reloadData()
        }
        else if indexPath.row == 5
        {
            a = 5
            cell.collection.reloadData()
        }
        else if indexPath.row == 6
        {
            a = 4
            cell.collection.reloadData()
        }
        else if indexPath.row == 7
        {
            a = 3
            cell.collection.reloadData()
        }
        else if indexPath.row == 8
        {
            a = 2
            cell.collection.reloadData()
        }
        else if indexPath.row == 9
        {
            a = 1
            cell.collection.reloadData()
        }
        var imga = imgarr[indexPath.row]
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
          
        print(a)
        return a

        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coll_cell", for: indexPath) as! CollectionViewCell
        
        cell.imgvw.image = imgarr[indexPath.row ]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

