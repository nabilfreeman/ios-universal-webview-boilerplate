//
//  ViewController.swift
//  Simple Universal Webview App
//
//  Created by Nabil Freeman on 19/06/2015.
//  Copyright (c) 2015 Freeman Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Here you have a choice between loading a local file (recommended for performance) and loading straight from your website. If you go for the latter, it's important that you have caching set up correctly or your users might struggle to see your web app sometimes.
        
        //let url = NSURL (string: "http://localhost");
        let url = NSBundle.mainBundle().URLForResource("web_content/index", withExtension: "html")
        
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Commented:    black status bar.
    //Uncommented:  white status bar.
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }


}

