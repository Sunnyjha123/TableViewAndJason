//
//  TableViewController.swift
//  TableViewWithJason
//
//  Created by Codewalla on 15/07/22.
//

import UIKit

class TableViewController: UITableViewController {

    
    
    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var managerName: UILabel!
    
    var managerArray:[CellStruct] = [CellStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managerArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell:UITableViewCell? = managerTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?
    }

    
    ////Function to fetch data from json
    func fetchdata()
    {
        guard let filelocation = Bundle.main.url(forResource: "data", withExtension: "json")
        else{
            return
        }
        
        do{
            let datas=try Data(contentsOf: filelocation)
            let receivedData=try JSONDecoder().decode([CellStruct].self,from:datas )
            managerArray = receivedData
            
        }
        catch{
            print("error while decoding json")
        }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    
    }

}
