//
//  ViewController.swift
//  CollectionViewCustomCellTest
//
//  Created by 柿崎 on 2024/07/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let playlists = [
        ["bara", "青りんごさん"],
        ["bara", "子供に人気"],
        ["bara", "お年寄りに人気"],
        ["bara", "今人気のミュージシャン"],
        ["bara", "公式髭男爵"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: collectionView.frame.width / 2 - 20 , height: 46)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        collectionView.collectionViewLayout = layout
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        playlists.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)

        if let cell = cell as? CustomCell {
            cell.setupCell(imageName: playlists[indexPath.row][0], labelText: playlists[indexPath.row][1])
        }

        return cell
    }
}
