//
//  Outlet.swift
//  voltzwagon
//
//  Created by Anina Mu on 10/19/19.
//  Copyright © 2019 Anina Mu. All rights reserved.
//

import UIKit

class Outlet {
    
    //MARK: Properties
    var id: String
    var name: String
    var description: String?
    var image: UIImage?
    
    //MARK: Initialization
    init?(id: String, name: String, description: String?, image: UIImage?) {
        if id.isEmpty || name.isEmpty {
            return nil
        }
        
        self.id = id
        self.name = name
        self.description = description
        self.image = image
    }
    
}
