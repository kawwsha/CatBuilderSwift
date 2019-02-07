//
//  CatTableViewController.swift
//  CatBuilderSwift
//
//  Created by Kasia McLellan on 2/6/19.
//  Copyright © 2019 KatherineMclellan. All rights reserved.
//

import UIKit

class CatTableViewController: UITableViewController {

    //MARK: Properties
    
    var cats = [Cat]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleCats()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "CatTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CatTableViewCell else {
            fatalError("Not an instance of CatTableViewCell")
        }
        
        //Fetches the appropriate cat data source layout
        let cat = cats[indexPath.row]
        
        cell.nameLabel.text = cat.name
        cell.photoImageView.image = cat.photo

        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Private Methods
    
    private func loadSampleCats(){
        let photo1 = UIImage(named: "coffeeCat")
        let photo2 = UIImage(named: "melkaCat")
        let photo3 = UIImage(named: "smoothieCat")
        
        let cat1 = Cat(name: "Coffee", age: 3, photo: photo1)
        
        let cat2 = Cat(name: "Melka", age: 4, photo: photo2)
        
        let cat3 = Cat(name: "Smoothie", age: 2, photo: photo3)
        
        cats += [cat1, cat2, cat3]
    }
}
