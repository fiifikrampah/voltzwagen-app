//
//  EditViewController.swift
//  voltzwagon
//
//  Created by Anina Mu on 10/21/19.
//  Copyright © 2019 Anina Mu. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    //MARK: Properties
    var outlet: Outlet? = nil
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.text = self.outlet?.name
        print(self.outlet?.image)
    }
}
