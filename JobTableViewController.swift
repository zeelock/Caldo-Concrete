//
//  JobTableViewController.swift
//  Caldo Concrete
//
//  Created by sandy cotugno on 11/16/20.
//

import UIKit

class JobTableViewController: UITableViewController {
   
    var jobList = [""]
    let jdata = JobData()
    var addressid: String = ""
    var addressidToJob: String = ""
    
    required init?(coder: NSCoder) {
        super.init(nibName: "AddressTableViewController" , bundle: nil)
    }
    init(addressid: String?) {
       super.init(nibName: "AddressTableViewController" , bundle: nil)
        self.addressid = addressid ?? ""
    }
    

    
    
    @IBOutlet  var jobTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
      
        
        jobTableView.delegate = self
        jobTableView.dataSource = self

        jobList = jdata.setJobTable(jobAt: addressidToJob)
     //   jobTableView.delegate = self
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
       
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobList.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jobRow", for: indexPath)

        cell.textLabel?.text = jobList[indexPath.row]
        return cell
    }
}
