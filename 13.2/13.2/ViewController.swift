//
//  ViewController.swift
//  13.2
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 gjn. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var urlTF: UITextField!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://www.dianping.com"){
            webView.load(URLRequest(url:url))
        }
    }

    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func forward(_ sender: Any) {
        webView.goForward()
    }
    
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func go(_ sender: Any) {
        if let url = URL(string: urlTF.text!){
            webView.load(URLRequest(url:url))
        }
    }
}

