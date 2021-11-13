//
//  ViewController.swift
//  Discord-M1
//
//  Created by Suchira  on 2021-11-13.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {
    
    var webView : WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: CGRect(x:0, y:0, width:800, height:600), configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.discord.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}

