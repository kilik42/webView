//
//  ViewController.swift
//  webView
//
//  Created by marvin evins on 4/20/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView = WKWebView()
        
        container.addSubview(webView)
      
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
        
//        let url = NSURL(string: urlstr)
//        let request = NSURLRequest(URL: url!)
//        
//        webView.loadRequest(request)
    }
    
    func loadRequest(urlStr: String) {
        
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }

    @IBAction func loadSwift(sender: AnyObject) {
        
         loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    
    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com/")
        
    }
    
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.goodreads.com/quotes/tag/steak")
        
    }
    
    
    
}

