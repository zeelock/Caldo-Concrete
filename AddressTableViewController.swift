//
//  AddressTableViewController.swift
//  Caldo Concrete
//
//  Created by sandy cotugno on 11/16/20.
//

import UIKit

class AddressTableViewController: UITableViewController, UISearchBarDelegate {
    
  var tessst = [String]()
   var testArray = JobData()
    var Addressid:String = ""

    @IBOutlet  var addressTableView:UITableView!
    @IBOutlet weak var addressLookUp: UISearchBar!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
            addressLookUp.delegate = self
            
            addressTableView.delegate = self
            addressTableView.dataSource = self
            
             tessst = testArray.testIndex(Str: "String?")
            // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Addressid = tessst[indexPath.row]
       
        let vc = JobTableViewController(addressid: "red")
       
        navigationController?.pushViewController( vc , animated: true)
  
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tessst.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addressrow", for: indexPath)

        cell.textLabel?.text = tessst[indexPath.row]
  
        return cell
    }

}
