//
//  DetailViewController.swift
//  voltzwagon
//
//  Created by Anina Mu on 10/18/19.
//  Copyright © 2019 Anina Mu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: Properties
    var outlet: Outlet? = nil
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var viewDataButton: UIBarButtonItem!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLabel.text = self.outlet?.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is EditViewController {
            let editView = segue.destination as? EditViewController
            editView?.outlet = self.outlet
        } else if segue.destination is DataViewController {
            let dataView = segue.destination as? DataViewController
            dataView?.outlet = self.outlet
        }
    }
}
