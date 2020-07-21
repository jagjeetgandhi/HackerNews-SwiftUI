//
//  WebView.swift
//  HackerNews
//
//  Created by jagjeet on 17/07/20.
//  Copyright © 2020 jagjeet. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView:UIViewRepresentable {
    let urlstring:String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeurl = urlstring {
            if let url = URL(string: safeurl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
    
}
