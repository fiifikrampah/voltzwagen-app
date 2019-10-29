//
//  FirstViewController.swift
//  voltzwagon
//
//  Created by Anina Mu on 10/16/19.
//  Copyright © 2019 Anina Mu. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    //MARK: Properties
    var outlets = [Outlet]()
    var newOutlet: Outlet?
    
    //MARK: Actions
    @IBAction func unwindToOutletList(sender: UIStoryboardSegue) {
        if let source = sender.source as? AddViewController, let newOutlet = source.newOutlet {
            let newIndexPath = IndexPath(row: self.outlets.count, section: 0)
            self.outlets.append(newOutlet)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadOutlets()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return outlets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ListTableViewCell"

        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ListTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ListTableViewCell.")
        }

        let outlet = outlets[indexPath.row]
        cell.outlet = outlet
        cell.nameLabel.text = outlet.name
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailViewController,
            let index = tableView.indexPathForSelectedRow?.row {
            let detailView = segue.destination as? DetailViewController
            detailView?.outlet = self.outlets[index]
        }
    }

    //MARK: Private Methods
    private func loadOutlets() {
        let dummyNames = ["Kitchen Sink Left", "Kitchen Sink Right",
                    "Bob's Xbox", "Living Room Lamps", "Toaster and Keurig"]
        for name in dummyNames.sorted() {
            if let outlet = Outlet(id: "000", name: name, description: nil, image: nil) {
                outlets.append(outlet)
            }
        }
    }

}

