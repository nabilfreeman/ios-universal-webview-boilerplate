//
//  ViewController.swift
//  Simple Universal Webview App
//
//  Created by Nabil Freeman on 19/06/2015.
//  Copyright (c) 2015 Freeman Industries. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var wkWebView: WKWebView?
    var uiWebView: UIWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Get main screen rect size
        let screenSize: CGRect = UIScreen.main.bounds

        // Construct frame where webview will be pop
        let frameRect: CGRect = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)

        // Create url request from local index.html file located in web_content
        //let url: NSURL = Bundle.mainBundle().URLForResource("web_content/index", withExtension: "html")!

        // Create a url request that points to a remote server (uncomment this line to use a remote url)
        let url: NSURL = NSURL(string: "https://example.com")!;

        let requestObj: NSURLRequest = NSURLRequest(url: url as URL);

        // Test operating system
        if ProcessInfo().isOperatingSystemAtLeast(OperatingSystemVersion(majorVersion: 8, minorVersion: 0, patchVersion: 0)) {

            self.wkWebView = WKWebView(frame: frameRect)
            self.wkWebView?.load(requestObj as URLRequest)
            self.view.addSubview(self.wkWebView!)

        } else {

            self.uiWebView = UIWebView(frame: frameRect)
            self.uiWebView?.loadRequest(requestObj as URLRequest)
            self.view.addSubview(self.uiWebView!)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Commented:    black status bar.
    //Uncommented:  white status bar.
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

