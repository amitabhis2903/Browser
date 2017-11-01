//
//  ViewController.swift
//  Browser
//
//  Created by MacBook Pro on 16.10.16.
//  Copyright © 2016 MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // ui obj
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!
    
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load website
        let url = URL(string: "http://www.google.com")!
        let request = URLRequest(url: url)
        webView.loadRequest(request)
    
    }

    // exec when go back is clicked
    @IBAction func goBack_clicked(_ sender: AnyObject) {
        webView.goBack()
    }
    
    // exec when go forward is clicked
    @IBAction func goForward_clicked(_ sender: AnyObject) {
        webView.goForward()
    }

    // exec when stop is clicked
    @IBAction func stop_clicked(_ sender: AnyObject) {
        webView.stopLoading()
    }
    
    // exec when reload is clicked
    @IBAction func reload_clicked(_ sender: AnyObject) {
        webView.reload()
    }
    
    // called when Return / GO button is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // laods website from textfield
        let url = URL(string: "http://" + textField.text!)!
        let request = URLRequest(url: url)
        webView.loadRequest(request)
        
        // removes keyboard
        textField.endEditing(true)
        
        return true
    }
    

}

