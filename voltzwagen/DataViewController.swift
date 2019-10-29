//
//  DataViewController.swift
//  voltzwagon
//
//  Created by Anina Mu on 10/21/19.
//  Copyright © 2019 Anina Mu. All rights reserved.
//

import UIKit
import WebKit

class DataViewController: UIViewController, WKUIDelegate {
    
    //MARK: Properties
    var outlet: Outlet? = nil
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.uiDelegate = self
//        view = webView
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.outlet?.name
        
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
}
